z·Y
card.twirp.swift.dartz«Y
import Foundation;
import dart:convert;
abstract class Card {
	Future<DefaultResponse>addCardSet(CardSet cardSet);
	Future<ListCardSetsResp>listCardSets(ListCardSetsReq listCardSetsReq);
	Future<DefaultResponse>editCardSet(CardSet cardSet);
	Future<DefaultResponse>addCardSetGroup(CardSetGroup cardSetGroup);
	Future<ListCardSetGroupsResp>listCardSetGroups(ListCardSetGroupsReq listCardSetGroupsReq);
	Future<DefaultResponse>editCardSetGroup(CardSetGroup cardSetGroup);
	Future<DefaultResponse>deleteCardSetGroup(DefaultDeleteReq defaultDeleteReq);
	Future<UserCardInfoResp>getUserCardInfo(UserCardInfoReq userCardInfoReq);
	Future<DefaultResponseWithIDResp>addCardCover(AddCardCoverReq addCardCoverReq);
	Future<DefaultResponse>editCardCover(AddCardCoverReq addCardCoverReq);
	Future<DefaultResponse>delCardCover(DelCardCoverReq delCardCoverReq);
	Future<ListCardCoversResp>listCardCovers(ListCardCoversReq listCardCoversReq);
	Future<DefaultResponseWithIDResp>addSendPlan(AddSendPlanReq addSendPlanReq);
	Future<ListSendPlansResp>listSendPlans(ListSendPlansReq listSendPlansReq);
}

class DefaultCard implements Card {
	final String hostname;
    Requester _requester;
	final _pathPrefix = "/twirp/card.v0.Card/";

    DefaultCard(this.hostname, {Requester requester}) {
		if (requester == null) {
      		_requester = new Requester(new Client());
    	} else {
			_requester = requester;
		}
	}

    
	func addCardSet(cardSet:CardSet, callback: func (DefaultResponse) -> Void) -> DefaultResponse {
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
        	print(resp)
    	}
    
    	task.resume()
		return
	}
    
	func listCardSets(listCardSetsReq:ListCardSetsReq, callback: func (ListCardSetsResp) -> Void) -> ListCardSetsResp {
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
        	print(resp)
    	}
    
    	task.resume()
		return
	}
    
	func editCardSet(cardSet:CardSet, callback: func (DefaultResponse) -> Void) -> DefaultResponse {
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
        	print(resp)
    	}
    
    	task.resume()
		return
	}
    
	func addCardSetGroup(cardSetGroup:CardSetGroup, callback: func (DefaultResponse) -> Void) -> DefaultResponse {
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
        	print(resp)
    	}
    
    	task.resume()
		return
	}
    
	func listCardSetGroups(listCardSetGroupsReq:ListCardSetGroupsReq, callback: func (ListCardSetGroupsResp) -> Void) -> ListCardSetGroupsResp {
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
        	print(resp)
    	}
    
    	task.resume()
		return
	}
    
	func editCardSetGroup(cardSetGroup:CardSetGroup, callback: func (DefaultResponse) -> Void) -> DefaultResponse {
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
        	print(resp)
    	}
    
    	task.resume()
		return
	}
    
	func deleteCardSetGroup(defaultDeleteReq:DefaultDeleteReq, callback: func (DefaultResponse) -> Void) -> DefaultResponse {
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
        	print(resp)
    	}
    
    	task.resume()
		return
	}
    
	func getUserCardInfo(userCardInfoReq:UserCardInfoReq, callback: func (UserCardInfoResp) -> Void) -> UserCardInfoResp {
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
        	print(resp)
    	}
    
    	task.resume()
		return
	}
    
	func addCardCover(addCardCoverReq:AddCardCoverReq, callback: func (DefaultResponseWithIDResp) -> Void) -> DefaultResponseWithIDResp {
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
        	print(resp)
    	}
    
    	task.resume()
		return
	}
    
	func editCardCover(addCardCoverReq:AddCardCoverReq, callback: func (DefaultResponse) -> Void) -> DefaultResponse {
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
        	print(resp)
    	}
    
    	task.resume()
		return
	}
    
	func delCardCover(delCardCoverReq:DelCardCoverReq, callback: func (DefaultResponse) -> Void) -> DefaultResponse {
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
        	print(resp)
    	}
    
    	task.resume()
		return
	}
    
	func listCardCovers(listCardCoversReq:ListCardCoversReq, callback: func (ListCardCoversResp) -> Void) -> ListCardCoversResp {
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
        	print(resp)
    	}
    
    	task.resume()
		return
	}
    
	func addSendPlan(addSendPlanReq:AddSendPlanReq, callback: func (DefaultResponseWithIDResp) -> Void) -> DefaultResponseWithIDResp {
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
        	print(resp)
    	}
    
    	task.resume()
		return
	}
    
	func listSendPlans(listSendPlansReq:ListSendPlansReq, callback: func (ListSendPlansResp) -> Void) -> ListSendPlansResp {
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
        	print(resp)
    	}
    
    	task.resume()
		return
	}
    

	Exception twirpException(Response response) {
    	try {
      		var value = json.decode(response.body);
      		return new TwirpJsonException.fromJson(value);
    	} catch (e) {
      		return new TwirpException(response.body);
    	}
  	}
}



