package main

import (
	"io"
	"io/ioutil"
	"os"

	"github.com/gogo/protobuf/proto"
	gogogen "github.com/gogo/protobuf/protoc-gen-gogo/generator"
	plugin "github.com/gogo/protobuf/protoc-gen-gogo/plugin"

	"github.com/albenik/protoc-gen-twirp-swift/generator"
)

func main() {
	req := readRequest(os.Stdin)
	writeResponse(os.Stdout, generate(req))
}

func readRequest(r io.Reader) *plugin.CodeGeneratorRequest {
	data, err := ioutil.ReadAll(r)
	if err != nil {
		panic(err)
	}

	req := new(plugin.CodeGeneratorRequest)
	if err = proto.Unmarshal(data, req); err != nil {
		panic(err)
	}

	if len(req.FileToGenerate) == 0 {
		panic(err)
	}

	return req
}

func generate(in *plugin.CodeGeneratorRequest) *plugin.CodeGeneratorResponse {
	resp := &plugin.CodeGeneratorResponse{}

	gen := gogogen.New()
	gen.Request = in
	gen.WrapTypes()
	gen.SetPackageNames()
	gen.BuildTypeNameMap()
	for _, f := range in.GetProtoFile() {
		// skip google/protobuf/timestamp, we don't do any special serialization for jsonpb.
		if *f.Name == "google/protobuf/timestamp.proto" {
			continue
		}
		// generate service only
		if f.Service == nil {
			continue
		}
		cf, err := generator.CreateClientAPI(f, gen)
		if err != nil {
			resp.Error = proto.String(err.Error())
			return resp
		}

		resp.File = append(resp.File, cf)
	}

	// resp.File = append(resp.File, generator.RuntimeLibrary())

	return resp
}

func writeResponse(w io.Writer, resp *plugin.CodeGeneratorResponse) {
	data, err := proto.Marshal(resp)
	if err != nil {
		panic(err)
	}
	_, err = w.Write(data)
	if err != nil {

	}
	// ioutil.WriteFile("activty.test.swift", data, 0644)
}
