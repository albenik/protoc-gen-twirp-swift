
import Foundation;
import SwiftProtobuf;
//abstract class Card {
//
//	Future<DefaultResponse>addCardSet(CardSet cardSet);
//
//	Future<ListCardSetsResp>listCardSets(ListCardSetsReq listCardSetsReq);
//
//	Future<DefaultResponse>editCardSet(CardSet cardSet);
//
//	Future<DefaultResponse>addCardSetGroup(CardSetGroup cardSetGroup);
//
//	Future<ListCardSetGroupsResp>listCardSetGroups(ListCardSetGroupsReq listCardSetGroupsReq);
//
//	Future<DefaultResponse>editCardSetGroup(CardSetGroup cardSetGroup);
//
//	Future<DefaultResponse>deleteCardSetGroup(DefaultDeleteReq defaultDeleteReq);
//
//	Future<UserCardInfoResp>getUserCardInfo(UserCardInfoReq userCardInfoReq);
//
//	Future<DefaultResponseWithIDResp>addCardCover(AddCardCoverReq addCardCoverReq);
//
//	Future<DefaultResponse>editCardCover(AddCardCoverReq addCardCoverReq);
//
//	Future<DefaultResponse>delCardCover(DelCardCoverReq delCardCoverReq);
//
//	Future<ListCardCoversResp>listCardCovers(ListCardCoversReq listCardCoversReq);
//
//	Future<DefaultResponseWithIDResp>addSendPlan(AddSendPlanReq addSendPlanReq);
//
//	Future<ListSendPlansResp>listSendPlans(ListSendPlansReq listSendPlansReq);
//
//}
struct cardv0 {
	struct Card {}
} 

extension cardv0.Card  {
	var hostname: String = ""
    //Requester _requester;
	var _pathPrefix: String = "/twirp/card.v0.Card/"

    //DefaultCard(this.hostname, {Requester requester}) {
	//	if (requester == null) {
    //  		_requester = new Requester(new Client());
    //	} else {
	//		_requester = requester;
	//	}
	//}

    
	func addCardSet(cardSet:CardSet, callback:(DefaultResponse?) -> Void) -> Void {
		var url = hostname + _pathPrefix + AddCardSet;
		var uri = URL(string: url)!
    	var request = URLRequest.init(url:uri);
		req.setValue("application/protobuf", forHTTPHeaderField: "Content-Type")
		req.method = .post

		let data = cardSet.serializedData()
		req.httpBody = data
		let task = URLSession.shared.dataTask(with: req) {data, response, err in
        	guard let data = data else {
            	return
        	}
        	let resp = try? Comic_V1_ComicDetailResp.init(serializedData: data)
        	callback(resp)
    	}
    
    	task.resume()
		return
	}
    
	func listCardSets(listCardSetsReq:ListCardSetsReq, callback:(ListCardSetsResp?) -> Void) -> Void {
		var url = hostname + _pathPrefix + ListCardSets;
		var uri = URL(string: url)!
    	var request = URLRequest.init(url:uri);
		req.setValue("application/protobuf", forHTTPHeaderField: "Content-Type")
		req.method = .post

		let data = listCardSetsReq.serializedData()
		req.httpBody = data
		let task = URLSession.shared.dataTask(with: req) {data, response, err in
        	guard let data = data else {
            	return
        	}
        	let resp = try? Comic_V1_ComicDetailResp.init(serializedData: data)
        	callback(resp)
    	}
    
    	task.resume()
		return
	}
    
	func editCardSet(cardSet:CardSet, callback:(DefaultResponse?) -> Void) -> Void {
		var url = hostname + _pathPrefix + EditCardSet;
		var uri = URL(string: url)!
    	var request = URLRequest.init(url:uri);
		req.setValue("application/protobuf", forHTTPHeaderField: "Content-Type")
		req.method = .post

		let data = cardSet.serializedData()
		req.httpBody = data
		let task = URLSession.shared.dataTask(with: req) {data, response, err in
        	guard let data = data else {
            	return
        	}
        	let resp = try? Comic_V1_ComicDetailResp.init(serializedData: data)
        	callback(resp)
    	}
    
    	task.resume()
		return
	}
    
	func addCardSetGroup(cardSetGroup:CardSetGroup, callback:(DefaultResponse?) -> Void) -> Void {
		var url = hostname + _pathPrefix + AddCardSetGroup;
		var uri = URL(string: url)!
    	var request = URLRequest.init(url:uri);
		req.setValue("application/protobuf", forHTTPHeaderField: "Content-Type")
		req.method = .post

		let data = cardSetGroup.serializedData()
		req.httpBody = data
		let task = URLSession.shared.dataTask(with: req) {data, response, err in
        	guard let data = data else {
            	return
        	}
        	let resp = try? Comic_V1_ComicDetailResp.init(serializedData: data)
        	callback(resp)
    	}
    
    	task.resume()
		return
	}
    
	func listCardSetGroups(listCardSetGroupsReq:ListCardSetGroupsReq, callback:(ListCardSetGroupsResp?) -> Void) -> Void {
		var url = hostname + _pathPrefix + ListCardSetGroups;
		var uri = URL(string: url)!
    	var request = URLRequest.init(url:uri);
		req.setValue("application/protobuf", forHTTPHeaderField: "Content-Type")
		req.method = .post

		let data = listCardSetGroupsReq.serializedData()
		req.httpBody = data
		let task = URLSession.shared.dataTask(with: req) {data, response, err in
        	guard let data = data else {
            	return
        	}
        	let resp = try? Comic_V1_ComicDetailResp.init(serializedData: data)
        	callback(resp)
    	}
    
    	task.resume()
		return
	}
    
	func editCardSetGroup(cardSetGroup:CardSetGroup, callback:(DefaultResponse?) -> Void) -> Void {
		var url = hostname + _pathPrefix + EditCardSetGroup;
		var uri = URL(string: url)!
    	var request = URLRequest.init(url:uri);
		req.setValue("application/protobuf", forHTTPHeaderField: "Content-Type")
		req.method = .post

		let data = cardSetGroup.serializedData()
		req.httpBody = data
		let task = URLSession.shared.dataTask(with: req) {data, response, err in
        	guard let data = data else {
            	return
        	}
        	let resp = try? Comic_V1_ComicDetailResp.init(serializedData: data)
        	callback(resp)
    	}
    
    	task.resume()
		return
	}
    
	func deleteCardSetGroup(defaultDeleteReq:DefaultDeleteReq, callback:(DefaultResponse?) -> Void) -> Void {
		var url = hostname + _pathPrefix + DeleteCardSetGroup;
		var uri = URL(string: url)!
    	var request = URLRequest.init(url:uri);
		req.setValue("application/protobuf", forHTTPHeaderField: "Content-Type")
		req.method = .post

		let data = defaultDeleteReq.serializedData()
		req.httpBody = data
		let task = URLSession.shared.dataTask(with: req) {data, response, err in
        	guard let data = data else {
            	return
        	}
        	let resp = try? Comic_V1_ComicDetailResp.init(serializedData: data)
        	callback(resp)
    	}
    
    	task.resume()
		return
	}
    
	func getUserCardInfo(userCardInfoReq:UserCardInfoReq, callback:(UserCardInfoResp?) -> Void) -> Void {
		var url = hostname + _pathPrefix + GetUserCardInfo;
		var uri = URL(string: url)!
    	var request = URLRequest.init(url:uri);
		req.setValue("application/protobuf", forHTTPHeaderField: "Content-Type")
		req.method = .post

		let data = userCardInfoReq.serializedData()
		req.httpBody = data
		let task = URLSession.shared.dataTask(with: req) {data, response, err in
        	guard let data = data else {
            	return
        	}
        	let resp = try? Comic_V1_ComicDetailResp.init(serializedData: data)
        	callback(resp)
    	}
    
    	task.resume()
		return
	}
    
	func addCardCover(addCardCoverReq:AddCardCoverReq, callback:(DefaultResponseWithIDResp?) -> Void) -> Void {
		var url = hostname + _pathPrefix + AddCardCover;
		var uri = URL(string: url)!
    	var request = URLRequest.init(url:uri);
		req.setValue("application/protobuf", forHTTPHeaderField: "Content-Type")
		req.method = .post

		let data = addCardCoverReq.serializedData()
		req.httpBody = data
		let task = URLSession.shared.dataTask(with: req) {data, response, err in
        	guard let data = data else {
            	return
        	}
        	let resp = try? Comic_V1_ComicDetailResp.init(serializedData: data)
        	callback(resp)
    	}
    
    	task.resume()
		return
	}
    
	func editCardCover(addCardCoverReq:AddCardCoverReq, callback:(DefaultResponse?) -> Void) -> Void {
		var url = hostname + _pathPrefix + EditCardCover;
		var uri = URL(string: url)!
    	var request = URLRequest.init(url:uri);
		req.setValue("application/protobuf", forHTTPHeaderField: "Content-Type")
		req.method = .post

		let data = addCardCoverReq.serializedData()
		req.httpBody = data
		let task = URLSession.shared.dataTask(with: req) {data, response, err in
        	guard let data = data else {
            	return
        	}
        	let resp = try? Comic_V1_ComicDetailResp.init(serializedData: data)
        	callback(resp)
    	}
    
    	task.resume()
		return
	}
    
	func delCardCover(delCardCoverReq:DelCardCoverReq, callback:(DefaultResponse?) -> Void) -> Void {
		var url = hostname + _pathPrefix + DelCardCover;
		var uri = URL(string: url)!
    	var request = URLRequest.init(url:uri);
		req.setValue("application/protobuf", forHTTPHeaderField: "Content-Type")
		req.method = .post

		let data = delCardCoverReq.serializedData()
		req.httpBody = data
		let task = URLSession.shared.dataTask(with: req) {data, response, err in
        	guard let data = data else {
            	return
        	}
        	let resp = try? Comic_V1_ComicDetailResp.init(serializedData: data)
        	callback(resp)
    	}
    
    	task.resume()
		return
	}
    
	func listCardCovers(listCardCoversReq:ListCardCoversReq, callback:(ListCardCoversResp?) -> Void) -> Void {
		var url = hostname + _pathPrefix + ListCardCovers;
		var uri = URL(string: url)!
    	var request = URLRequest.init(url:uri);
		req.setValue("application/protobuf", forHTTPHeaderField: "Content-Type")
		req.method = .post

		let data = listCardCoversReq.serializedData()
		req.httpBody = data
		let task = URLSession.shared.dataTask(with: req) {data, response, err in
        	guard let data = data else {
            	return
        	}
        	let resp = try? Comic_V1_ComicDetailResp.init(serializedData: data)
        	callback(resp)
    	}
    
    	task.resume()
		return
	}
    
	func addSendPlan(addSendPlanReq:AddSendPlanReq, callback:(DefaultResponseWithIDResp?) -> Void) -> Void {
		var url = hostname + _pathPrefix + AddSendPlan;
		var uri = URL(string: url)!
    	var request = URLRequest.init(url:uri);
		req.setValue("application/protobuf", forHTTPHeaderField: "Content-Type")
		req.method = .post

		let data = addSendPlanReq.serializedData()
		req.httpBody = data
		let task = URLSession.shared.dataTask(with: req) {data, response, err in
        	guard let data = data else {
            	return
        	}
        	let resp = try? Comic_V1_ComicDetailResp.init(serializedData: data)
        	callback(resp)
    	}
    
    	task.resume()
		return
	}
    
	func listSendPlans(listSendPlansReq:ListSendPlansReq, callback:(ListSendPlansResp?) -> Void) -> Void {
		var url = hostname + _pathPrefix + ListSendPlans;
		var uri = URL(string: url)!
    	var request = URLRequest.init(url:uri);
		req.setValue("application/protobuf", forHTTPHeaderField: "Content-Type")
		req.method = .post

		let data = listSendPlansReq.serializedData()
		req.httpBody = data
		let task = URLSession.shared.dataTask(with: req) {data, response, err in
        	guard let data = data else {
            	return
        	}
        	let resp = try? Comic_V1_ComicDetailResp.init(serializedData: data)
        	callback(resp)
    	}
    
    	task.resume()
		return
	}
    

	//Exception twirpException(Response response) {
    //	try {
    //  		var value = json.decode(response.body);
    //  		return new TwirpJsonException.fromJson(value);
    //	} catch (e) {
    //  		return new TwirpException(response.body);
    //	}
  	//}
}



