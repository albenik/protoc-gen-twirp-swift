
import Foundation;
import SwiftProtobuf;
//abstract class Card {
//
//	Future<DefaultResponse>addCardSet(Card_V0_CardSet cardSet);
//
//	Future<ListCardSetsResp>listCardSets(Card_V0_ListCardSetsReq listCardSetsReq);
//
//	Future<DefaultResponse>editCardSet(Card_V0_CardSet cardSet);
//
//	Future<DefaultResponse>addCardSetGroup(Card_V0_CardSetGroup cardSetGroup);
//
//	Future<ListCardSetGroupsResp>listCardSetGroups(Card_V0_ListCardSetGroupsReq listCardSetGroupsReq);
//
//	Future<DefaultResponse>editCardSetGroup(Card_V0_CardSetGroup cardSetGroup);
//
//	Future<DefaultResponse>deleteCardSetGroup(Card_V0_DefaultDeleteReq defaultDeleteReq);
//
//	Future<UserCardInfoResp>getUserCardInfo(Card_V0_UserCardInfoReq userCardInfoReq);
//
//	Future<DefaultResponseWithIDResp>addCardCover(Card_V0_AddCardCoverReq addCardCoverReq);
//
//	Future<DefaultResponse>editCardCover(Card_V0_AddCardCoverReq addCardCoverReq);
//
//	Future<DefaultResponse>delCardCover(Card_V0_DelCardCoverReq delCardCoverReq);
//
//	Future<ListCardCoversResp>listCardCovers(Card_V0_ListCardCoversReq listCardCoversReq);
//
//	Future<DefaultResponseWithIDResp>addSendPlan(Card_V0_AddSendPlanReq addSendPlanReq);
//
//	Future<ListSendPlansResp>listSendPlans(Card_V0_ListSendPlansReq listSendPlansReq);
//
//}

struct Card_V0_Card {
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

    
	func addCardSet(cardSet:Card_V0_CardSet, callback:(DefaultResponse?) -> Void) -> Void {
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
    
	func listCardSets(listCardSetsReq:Card_V0_ListCardSetsReq, callback:(ListCardSetsResp?) -> Void) -> Void {
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
    
	func editCardSet(cardSet:Card_V0_CardSet, callback:(DefaultResponse?) -> Void) -> Void {
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
    
	func addCardSetGroup(cardSetGroup:Card_V0_CardSetGroup, callback:(DefaultResponse?) -> Void) -> Void {
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
    
	func listCardSetGroups(listCardSetGroupsReq:Card_V0_ListCardSetGroupsReq, callback:(ListCardSetGroupsResp?) -> Void) -> Void {
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
    
	func editCardSetGroup(cardSetGroup:Card_V0_CardSetGroup, callback:(DefaultResponse?) -> Void) -> Void {
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
    
	func deleteCardSetGroup(defaultDeleteReq:Card_V0_DefaultDeleteReq, callback:(DefaultResponse?) -> Void) -> Void {
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
    
	func getUserCardInfo(userCardInfoReq:Card_V0_UserCardInfoReq, callback:(UserCardInfoResp?) -> Void) -> Void {
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
    
	func addCardCover(addCardCoverReq:Card_V0_AddCardCoverReq, callback:(DefaultResponseWithIDResp?) -> Void) -> Void {
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
    
	func editCardCover(addCardCoverReq:Card_V0_AddCardCoverReq, callback:(DefaultResponse?) -> Void) -> Void {
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
    
	func delCardCover(delCardCoverReq:Card_V0_DelCardCoverReq, callback:(DefaultResponse?) -> Void) -> Void {
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
    
	func listCardCovers(listCardCoversReq:Card_V0_ListCardCoversReq, callback:(ListCardCoversResp?) -> Void) -> Void {
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
    
	func addSendPlan(addSendPlanReq:Card_V0_AddSendPlanReq, callback:(DefaultResponseWithIDResp?) -> Void) -> Void {
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
    
	func listSendPlans(listSendPlansReq:Card_V0_ListSendPlansReq, callback:(ListSendPlansResp?) -> Void) -> Void {
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



