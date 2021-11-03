
import 'dart:async';
import 'package:http/http.dart';
import 'package:requester/requester.dart';
import 'package:twirp_dart_core/twirp_dart_core.dart';
import 'dart:convert';
class EmptyData {

	EmptyData(
	);

    
	
	factory EmptyData.fromJson(Map<String,dynamic> json) {

		return new EmptyData(
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class DefaultResponseWithIDResp {

	DefaultResponseWithIDResp(
	this.code,this.msg,this.data,);

    int code;
    String msg;
    DataWithID data;
    
	
	factory DefaultResponseWithIDResp.fromJson(Map<String,dynamic> json) {
		
		
		

		return new DefaultResponseWithIDResp(
		json['code'] as int,
		json['msg'] as String,
		new DataWithID.fromJson(json['data']),
		
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['code'] = code;
    	map['msg'] = msg;
		map['data'] = data.toJson();
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class DataWithID {

	DataWithID(
	this.id,);

    int id;
    
	
	factory DataWithID.fromJson(Map<String,dynamic> json) {
		

		return new DataWithID(
		json['id'] as int,
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['id'] = id;
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class ListCardSetsReq {

	ListCardSetsReq(
	this.pageNum,this.pageSize,this.cardType,);

    int pageNum;
    int pageSize;
    int cardType;
    
	
	factory ListCardSetsReq.fromJson(Map<String,dynamic> json) {
		
		
		

		return new ListCardSetsReq(
		json['page_num'] as int,
		json['page_size'] as int,
		json['card_type'] as int,
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['page_num'] = pageNum;
    	map['page_size'] = pageSize;
    	map['card_type'] = cardType;
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class DefaultPaginateReq {

	DefaultPaginateReq(
	this.pageNum,this.pageSize,);

    int pageNum;
    int pageSize;
    
	
	factory DefaultPaginateReq.fromJson(Map<String,dynamic> json) {
		
		

		return new DefaultPaginateReq(
		json['page_num'] as int,
		json['page_size'] as int,
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['page_num'] = pageNum;
    	map['page_size'] = pageSize;
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class DefaultResponse {

	DefaultResponse(
	this.code,this.msg,this.data,);

    int code;
    String msg;
    EmptyData data;
    
	
	factory DefaultResponse.fromJson(Map<String,dynamic> json) {
		
		
		

		return new DefaultResponse(
		json['code'] as int,
		json['msg'] as String,
		new EmptyData.fromJson(json['data']),
		
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['code'] = code;
    	map['msg'] = msg;
		map['data'] = data.toJson();
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class ListCardSetsResp {

	ListCardSetsResp(
	this.code,this.msg,this.data,);

    int code;
    String msg;
    ListCardSetsData data;
    
	
	factory ListCardSetsResp.fromJson(Map<String,dynamic> json) {
		
		
		

		return new ListCardSetsResp(
		json['code'] as int,
		json['msg'] as String,
		new ListCardSetsData.fromJson(json['data']),
		
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['code'] = code;
    	map['msg'] = msg;
		map['data'] = data.toJson();
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class ListCardSetsData {

	ListCardSetsData(
	this.totalCount,this.list,);

    int totalCount;
    List<CardSet> list;
    
	
	factory ListCardSetsData.fromJson(Map<String,dynamic> json) {
		
		

		return new ListCardSetsData(
		json['total_count'] as int,
		json['list'] != null
          ? (json['list'] as List)
              .map((d) => new CardSet.fromJson(d))
              .toList()
          : <CardSet>[],
		
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['total_count'] = totalCount;
		map['list'] = list?.map((l) => l.toJson())?.toList();
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class ListCardSetGroupsReq {

	ListCardSetGroupsReq(
	this.pageNum,this.pageSize,this.platform,);

    int pageNum;
    int pageSize;
    int platform;
    
	
	factory ListCardSetGroupsReq.fromJson(Map<String,dynamic> json) {
		
		
		

		return new ListCardSetGroupsReq(
		json['page_num'] as int,
		json['page_size'] as int,
		json['platform'] as int,
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['page_num'] = pageNum;
    	map['page_size'] = pageSize;
    	map['platform'] = platform;
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class ListCardSetGroupsResp {

	ListCardSetGroupsResp(
	this.code,this.msg,this.data,);

    int code;
    String msg;
    ListCardSetGroupsData data;
    
	
	factory ListCardSetGroupsResp.fromJson(Map<String,dynamic> json) {
		
		
		

		return new ListCardSetGroupsResp(
		json['code'] as int,
		json['msg'] as String,
		new ListCardSetGroupsData.fromJson(json['data']),
		
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['code'] = code;
    	map['msg'] = msg;
		map['data'] = data.toJson();
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class ListCardSetGroupsData {

	ListCardSetGroupsData(
	this.totalCount,this.list,);

    int totalCount;
    List<CardSetGroup> list;
    
	
	factory ListCardSetGroupsData.fromJson(Map<String,dynamic> json) {
		
		

		return new ListCardSetGroupsData(
		json['total_count'] as int,
		json['list'] != null
          ? (json['list'] as List)
              .map((d) => new CardSetGroup.fromJson(d))
              .toList()
          : <CardSetGroup>[],
		
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['total_count'] = totalCount;
		map['list'] = list?.map((l) => l.toJson())?.toList();
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class CardSetGroup {

	CardSetGroup(
	this.id,this.title,this.cardSetIds,this.pushType,this.userGroupIds,this.weight,this.startTime,this.endTime,this.cuser,this.ctime,this.mtime,this.status,this.platform,);

    int id;
    String title;
    List<int> cardSetIds;
    int pushType;
    List<int> userGroupIds;
    int weight;
    String startTime;
    String endTime;
    String cuser;
    String ctime;
    String mtime;
    int status;
    int platform;
    
	
	factory CardSetGroup.fromJson(Map<String,dynamic> json) {
		
		
		
		
		
		
		
		
		
		
		
		
		

		return new CardSetGroup(
		json['id'] as int,
		json['title'] as String,
		json['card_set_ids'] != null ? (json['card_set_ids'] as List).cast<int>() : <int>[],
		
		json['push_type'] as int,
		json['user_group_ids'] != null ? (json['user_group_ids'] as List).cast<int>() : <int>[],
		
		json['weight'] as int,
		json['start_time'] as String,
		json['end_time'] as String,
		json['cuser'] as String,
		json['ctime'] as String,
		json['mtime'] as String,
		json['status'] as int,
		json['platform'] as int,
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['id'] = id;
    	map['title'] = title;
		map['card_set_ids'] = cardSetIds?.map((l) => l)?.toList();
    	map['push_type'] = pushType;
		map['user_group_ids'] = userGroupIds?.map((l) => l)?.toList();
    	map['weight'] = weight;
    	map['start_time'] = startTime;
    	map['end_time'] = endTime;
    	map['cuser'] = cuser;
    	map['ctime'] = ctime;
    	map['mtime'] = mtime;
    	map['status'] = status;
    	map['platform'] = platform;
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class CardSet {

	CardSet(
	this.id,this.title,this.gold,this.originGold,this.cardType,this.iconTxt,this.adTxt,this.extraAmount,this.cuser,this.ctime,this.mtime,this.discountFirstGold,this.discountStartTime,this.discountEndTime,this.productId,this.planId,this.firstIconTxt,this.firstAdTxt,this.secondExtraAmount,this.secondStartTime,this.secondEndTime,this.hasFirstWeekCard,this.discountGold,this.discountGoldStartTime,this.discountGoldEndTime,);

    int id;
    String title;
    int gold;
    int originGold;
    int cardType;
    String iconTxt;
    String adTxt;
    int extraAmount;
    String cuser;
    String ctime;
    String mtime;
    int discountFirstGold;
    String discountStartTime;
    String discountEndTime;
    String productId;
    String planId;
    String firstIconTxt;
    String firstAdTxt;
    int secondExtraAmount;
    String secondStartTime;
    String secondEndTime;
    bool hasFirstWeekCard;
    int discountGold;
    String discountGoldStartTime;
    String discountGoldEndTime;
    
	
	factory CardSet.fromJson(Map<String,dynamic> json) {
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		

		return new CardSet(
		json['id'] as int,
		json['title'] as String,
		json['gold'] as int,
		json['origin_gold'] as int,
		json['card_type'] as int,
		json['icon_txt'] as String,
		json['ad_txt'] as String,
		json['extra_amount'] as int,
		json['cuser'] as String,
		json['ctime'] as String,
		json['mtime'] as String,
		json['discount_first_gold'] as int,
		json['discount_start_time'] as String,
		json['discount_end_time'] as String,
		json['product_id'] as String,
		json['plan_id'] as String,
		json['first_icon_txt'] as String,
		json['first_ad_txt'] as String,
		json['second_extra_amount'] as int,
		json['second_start_time'] as String,
		json['second_end_time'] as String,
		json['has_first_week_card'] as bool,
		json['discount_gold'] as int,
		json['discount_gold_start_time'] as String,
		json['discount_gold_end_time'] as String,
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['id'] = id;
    	map['title'] = title;
    	map['gold'] = gold;
    	map['origin_gold'] = originGold;
    	map['card_type'] = cardType;
    	map['icon_txt'] = iconTxt;
    	map['ad_txt'] = adTxt;
    	map['extra_amount'] = extraAmount;
    	map['cuser'] = cuser;
    	map['ctime'] = ctime;
    	map['mtime'] = mtime;
    	map['discount_first_gold'] = discountFirstGold;
    	map['discount_start_time'] = discountStartTime;
    	map['discount_end_time'] = discountEndTime;
    	map['product_id'] = productId;
    	map['plan_id'] = planId;
    	map['first_icon_txt'] = firstIconTxt;
    	map['first_ad_txt'] = firstAdTxt;
    	map['second_extra_amount'] = secondExtraAmount;
    	map['second_start_time'] = secondStartTime;
    	map['second_end_time'] = secondEndTime;
    	map['has_first_week_card'] = hasFirstWeekCard;
    	map['discount_gold'] = discountGold;
    	map['discount_gold_start_time'] = discountGoldStartTime;
    	map['discount_gold_end_time'] = discountGoldEndTime;
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class DefaultDeleteReq {

	DefaultDeleteReq(
	this.id,);

    int id;
    
	
	factory DefaultDeleteReq.fromJson(Map<String,dynamic> json) {
		

		return new DefaultDeleteReq(
		json['id'] as int,
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['id'] = id;
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class UserCardInfoReq {

	UserCardInfoReq(
	this.uids,);

    List<int> uids;
    
	
	factory UserCardInfoReq.fromJson(Map<String,dynamic> json) {
		

		return new UserCardInfoReq(
		json['uids'] != null ? (json['uids'] as List).cast<int>() : <int>[],
		
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
		map['uids'] = uids?.map((l) => l)?.toList();
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class UserCardInfoResp {

	UserCardInfoResp(
	this.code,this.msg,this.data,);

    int code;
    String msg;
    UserCardData data;
    
	
	factory UserCardInfoResp.fromJson(Map<String,dynamic> json) {
		
		
		

		return new UserCardInfoResp(
		json['code'] as int,
		json['msg'] as String,
		new UserCardData.fromJson(json['data']),
		
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['code'] = code;
    	map['msg'] = msg;
		map['data'] = data.toJson();
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class UserCardData {

	UserCardData(
	this.cardLevels,this.clubLevels,);

    Map<int,int> cardLevels;
    Map<int,int> clubLevels;
    
	
	factory UserCardData.fromJson(Map<String,dynamic> json) {
			var cardLevelsMap = new Map<int,int>();
			(json['card_levels'] as Map<String, dynamic>)?.forEach((key, val) {
				
				if (val is String) {
					
					
						cardLevelsMap[key] = int.parse(val);
					
				} else if (val is num) {
					
					
						cardLevelsMap[key] = val.toInt();
					
				}
				
			});
			
		
			var clubLevelsMap = new Map<int,int>();
			(json['club_levels'] as Map<String, dynamic>)?.forEach((key, val) {
				
				if (val is String) {
					
					
						clubLevelsMap[key] = int.parse(val);
					
				} else if (val is num) {
					
					
						clubLevelsMap[key] = val.toInt();
					
				}
				
			});
			
		

		return new UserCardData(
		cardLevelsMap,
		
		clubLevelsMap,
		
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
		map['card_levels'] = json.decode(json.encode(cardLevels));
		map['club_levels'] = json.decode(json.encode(clubLevels));
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class AddCardCoverReq {

	AddCardCoverReq(
	this.id,this.title,this.cover,this.resource,this.type,this.startTime,this.endTime,this.cuser,this.mtime,this.uriType,this.gradientColorTop,this.gradientColorBottom,this.version,this.comicId,);

    int id;
    String title;
    String cover;
    String resource;
    int type;
    String startTime;
    String endTime;
    String cuser;
    String mtime;
    int uriType;
    String gradientColorTop;
    String gradientColorBottom;
    int version;
    int comicId;
    
	
	factory AddCardCoverReq.fromJson(Map<String,dynamic> json) {
		
		
		
		
		
		
		
		
		
		
		
		
		
		

		return new AddCardCoverReq(
		json['id'] as int,
		json['title'] as String,
		json['cover'] as String,
		json['resource'] as String,
		json['type'] as int,
		json['start_time'] as String,
		json['end_time'] as String,
		json['cuser'] as String,
		json['mtime'] as String,
		json['uri_type'] as int,
		json['gradient_color_top'] as String,
		json['gradient_color_bottom'] as String,
		json['version'] as int,
		json['comic_id'] as int,
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['id'] = id;
    	map['title'] = title;
    	map['cover'] = cover;
    	map['resource'] = resource;
    	map['type'] = type;
    	map['start_time'] = startTime;
    	map['end_time'] = endTime;
    	map['cuser'] = cuser;
    	map['mtime'] = mtime;
    	map['uri_type'] = uriType;
    	map['gradient_color_top'] = gradientColorTop;
    	map['gradient_color_bottom'] = gradientColorBottom;
    	map['version'] = version;
    	map['comic_id'] = comicId;
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class DelCardCoverReq {

	DelCardCoverReq(
	this.id,);

    int id;
    
	
	factory DelCardCoverReq.fromJson(Map<String,dynamic> json) {
		

		return new DelCardCoverReq(
		json['id'] as int,
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['id'] = id;
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class ListCardCoversReq {

	ListCardCoversReq(
	this.pageNum,this.pageSize,this.version,);

    int pageNum;
    int pageSize;
    int version;
    
	
	factory ListCardCoversReq.fromJson(Map<String,dynamic> json) {
		
		
		

		return new ListCardCoversReq(
		json['page_num'] as int,
		json['page_size'] as int,
		json['version'] as int,
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['page_num'] = pageNum;
    	map['page_size'] = pageSize;
    	map['version'] = version;
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class ListCardCoversResp {

	ListCardCoversResp(
	this.code,this.msg,this.data,);

    int code;
    String msg;
    ListCardCovers data;
    
	
	factory ListCardCoversResp.fromJson(Map<String,dynamic> json) {
		
		
		

		return new ListCardCoversResp(
		json['code'] as int,
		json['msg'] as String,
		new ListCardCovers.fromJson(json['data']),
		
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['code'] = code;
    	map['msg'] = msg;
		map['data'] = data.toJson();
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class ListCardCovers {

	ListCardCovers(
	this.total,this.cards,);

    int total;
    List<AddCardCoverReq> cards;
    
	
	factory ListCardCovers.fromJson(Map<String,dynamic> json) {
		
		

		return new ListCardCovers(
		json['total'] as int,
		json['cards'] != null
          ? (json['cards'] as List)
              .map((d) => new AddCardCoverReq.fromJson(d))
              .toList()
          : <AddCardCoverReq>[],
		
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['total'] = total;
		map['cards'] = cards?.map((l) => l.toJson())?.toList();
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class AddSendPlanReq {

	AddSendPlanReq(
	this.id,this.description,this.productId,this.uids,this.csv,this.cuser,this.ctime,this.type,this.status,this.productType,this.amount,this.content,this.sendTime,);

    int id;
    String description;
    int productId;
    List<int> uids;
    String csv;
    String cuser;
    String ctime;
    int type;
    int status;
    int productType;
    int amount;
    String content;
    String sendTime;
    
	
	factory AddSendPlanReq.fromJson(Map<String,dynamic> json) {
		
		
		
		
		
		
		
		
		
		
		
		
		

		return new AddSendPlanReq(
		json['id'] as int,
		json['description'] as String,
		json['product_id'] as int,
		json['uids'] != null ? (json['uids'] as List).cast<int>() : <int>[],
		
		json['csv'] as String,
		json['cuser'] as String,
		json['ctime'] as String,
		json['type'] as int,
		json['status'] as int,
		json['product_type'] as int,
		json['amount'] as int,
		json['content'] as String,
		json['send_time'] as String,
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['id'] = id;
    	map['description'] = description;
    	map['product_id'] = productId;
		map['uids'] = uids?.map((l) => l)?.toList();
    	map['csv'] = csv;
    	map['cuser'] = cuser;
    	map['ctime'] = ctime;
    	map['type'] = type;
    	map['status'] = status;
    	map['product_type'] = productType;
    	map['amount'] = amount;
    	map['content'] = content;
    	map['send_time'] = sendTime;
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class ListSendPlansReq {

	ListSendPlansReq(
	this.type,this.pageNum,this.pageSize,);

    int type;
    int pageNum;
    int pageSize;
    
	
	factory ListSendPlansReq.fromJson(Map<String,dynamic> json) {
		
		
		

		return new ListSendPlansReq(
		json['type'] as int,
		json['page_num'] as int,
		json['page_size'] as int,
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['type'] = type;
    	map['page_num'] = pageNum;
    	map['page_size'] = pageSize;
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class ListSendPlansResp {

	ListSendPlansResp(
	this.code,this.msg,this.data,);

    int code;
    String msg;
    ListSendPlans data;
    
	
	factory ListSendPlansResp.fromJson(Map<String,dynamic> json) {
		
		
		

		return new ListSendPlansResp(
		json['code'] as int,
		json['msg'] as String,
		new ListSendPlans.fromJson(json['data']),
		
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['code'] = code;
    	map['msg'] = msg;
		map['data'] = data.toJson();
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class ListSendPlans {

	ListSendPlans(
	this.total,this.plan,);

    int total;
    List<AddSendPlanReq> plan;
    
	
	factory ListSendPlans.fromJson(Map<String,dynamic> json) {
		
		

		return new ListSendPlans(
		json['total'] as int,
		json['plan'] != null
          ? (json['plan'] as List)
              .map((d) => new AddSendPlanReq.fromJson(d))
              .toList()
          : <AddSendPlanReq>[],
		
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['total'] = total;
		map['plan'] = plan?.map((l) => l.toJson())?.toList();
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

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

    
	Future<DefaultResponse>addCardSet(CardSet cardSet) async {
		var url = "${hostname}${_pathPrefix}AddCardSet";
		var uri = Uri.parse(url);
    	var request = new Request('POST', uri);
		request.headers['Content-Type'] = 'application/json';
    	request.body = json.encode(cardSet.toJson());
    	var response = await _requester.send(request);
		if (response.statusCode != 200) {
     		throw twirpException(response);
    	}
    	var value = json.decode(response.body);
    	return DefaultResponse.fromJson(value);
	}
    
	Future<ListCardSetsResp>listCardSets(ListCardSetsReq listCardSetsReq) async {
		var url = "${hostname}${_pathPrefix}ListCardSets";
		var uri = Uri.parse(url);
    	var request = new Request('POST', uri);
		request.headers['Content-Type'] = 'application/json';
    	request.body = json.encode(listCardSetsReq.toJson());
    	var response = await _requester.send(request);
		if (response.statusCode != 200) {
     		throw twirpException(response);
    	}
    	var value = json.decode(response.body);
    	return ListCardSetsResp.fromJson(value);
	}
    
	Future<DefaultResponse>editCardSet(CardSet cardSet) async {
		var url = "${hostname}${_pathPrefix}EditCardSet";
		var uri = Uri.parse(url);
    	var request = new Request('POST', uri);
		request.headers['Content-Type'] = 'application/json';
    	request.body = json.encode(cardSet.toJson());
    	var response = await _requester.send(request);
		if (response.statusCode != 200) {
     		throw twirpException(response);
    	}
    	var value = json.decode(response.body);
    	return DefaultResponse.fromJson(value);
	}
    
	Future<DefaultResponse>addCardSetGroup(CardSetGroup cardSetGroup) async {
		var url = "${hostname}${_pathPrefix}AddCardSetGroup";
		var uri = Uri.parse(url);
    	var request = new Request('POST', uri);
		request.headers['Content-Type'] = 'application/json';
    	request.body = json.encode(cardSetGroup.toJson());
    	var response = await _requester.send(request);
		if (response.statusCode != 200) {
     		throw twirpException(response);
    	}
    	var value = json.decode(response.body);
    	return DefaultResponse.fromJson(value);
	}
    
	Future<ListCardSetGroupsResp>listCardSetGroups(ListCardSetGroupsReq listCardSetGroupsReq) async {
		var url = "${hostname}${_pathPrefix}ListCardSetGroups";
		var uri = Uri.parse(url);
    	var request = new Request('POST', uri);
		request.headers['Content-Type'] = 'application/json';
    	request.body = json.encode(listCardSetGroupsReq.toJson());
    	var response = await _requester.send(request);
		if (response.statusCode != 200) {
     		throw twirpException(response);
    	}
    	var value = json.decode(response.body);
    	return ListCardSetGroupsResp.fromJson(value);
	}
    
	Future<DefaultResponse>editCardSetGroup(CardSetGroup cardSetGroup) async {
		var url = "${hostname}${_pathPrefix}EditCardSetGroup";
		var uri = Uri.parse(url);
    	var request = new Request('POST', uri);
		request.headers['Content-Type'] = 'application/json';
    	request.body = json.encode(cardSetGroup.toJson());
    	var response = await _requester.send(request);
		if (response.statusCode != 200) {
     		throw twirpException(response);
    	}
    	var value = json.decode(response.body);
    	return DefaultResponse.fromJson(value);
	}
    
	Future<DefaultResponse>deleteCardSetGroup(DefaultDeleteReq defaultDeleteReq) async {
		var url = "${hostname}${_pathPrefix}DeleteCardSetGroup";
		var uri = Uri.parse(url);
    	var request = new Request('POST', uri);
		request.headers['Content-Type'] = 'application/json';
    	request.body = json.encode(defaultDeleteReq.toJson());
    	var response = await _requester.send(request);
		if (response.statusCode != 200) {
     		throw twirpException(response);
    	}
    	var value = json.decode(response.body);
    	return DefaultResponse.fromJson(value);
	}
    
	Future<UserCardInfoResp>getUserCardInfo(UserCardInfoReq userCardInfoReq) async {
		var url = "${hostname}${_pathPrefix}GetUserCardInfo";
		var uri = Uri.parse(url);
    	var request = new Request('POST', uri);
		request.headers['Content-Type'] = 'application/json';
    	request.body = json.encode(userCardInfoReq.toJson());
    	var response = await _requester.send(request);
		if (response.statusCode != 200) {
     		throw twirpException(response);
    	}
    	var value = json.decode(response.body);
    	return UserCardInfoResp.fromJson(value);
	}
    
	Future<DefaultResponseWithIDResp>addCardCover(AddCardCoverReq addCardCoverReq) async {
		var url = "${hostname}${_pathPrefix}AddCardCover";
		var uri = Uri.parse(url);
    	var request = new Request('POST', uri);
		request.headers['Content-Type'] = 'application/json';
    	request.body = json.encode(addCardCoverReq.toJson());
    	var response = await _requester.send(request);
		if (response.statusCode != 200) {
     		throw twirpException(response);
    	}
    	var value = json.decode(response.body);
    	return DefaultResponseWithIDResp.fromJson(value);
	}
    
	Future<DefaultResponse>editCardCover(AddCardCoverReq addCardCoverReq) async {
		var url = "${hostname}${_pathPrefix}EditCardCover";
		var uri = Uri.parse(url);
    	var request = new Request('POST', uri);
		request.headers['Content-Type'] = 'application/json';
    	request.body = json.encode(addCardCoverReq.toJson());
    	var response = await _requester.send(request);
		if (response.statusCode != 200) {
     		throw twirpException(response);
    	}
    	var value = json.decode(response.body);
    	return DefaultResponse.fromJson(value);
	}
    
	Future<DefaultResponse>delCardCover(DelCardCoverReq delCardCoverReq) async {
		var url = "${hostname}${_pathPrefix}DelCardCover";
		var uri = Uri.parse(url);
    	var request = new Request('POST', uri);
		request.headers['Content-Type'] = 'application/json';
    	request.body = json.encode(delCardCoverReq.toJson());
    	var response = await _requester.send(request);
		if (response.statusCode != 200) {
     		throw twirpException(response);
    	}
    	var value = json.decode(response.body);
    	return DefaultResponse.fromJson(value);
	}
    
	Future<ListCardCoversResp>listCardCovers(ListCardCoversReq listCardCoversReq) async {
		var url = "${hostname}${_pathPrefix}ListCardCovers";
		var uri = Uri.parse(url);
    	var request = new Request('POST', uri);
		request.headers['Content-Type'] = 'application/json';
    	request.body = json.encode(listCardCoversReq.toJson());
    	var response = await _requester.send(request);
		if (response.statusCode != 200) {
     		throw twirpException(response);
    	}
    	var value = json.decode(response.body);
    	return ListCardCoversResp.fromJson(value);
	}
    
	Future<DefaultResponseWithIDResp>addSendPlan(AddSendPlanReq addSendPlanReq) async {
		var url = "${hostname}${_pathPrefix}AddSendPlan";
		var uri = Uri.parse(url);
    	var request = new Request('POST', uri);
		request.headers['Content-Type'] = 'application/json';
    	request.body = json.encode(addSendPlanReq.toJson());
    	var response = await _requester.send(request);
		if (response.statusCode != 200) {
     		throw twirpException(response);
    	}
    	var value = json.decode(response.body);
    	return DefaultResponseWithIDResp.fromJson(value);
	}
    
	Future<ListSendPlansResp>listSendPlans(ListSendPlansReq listSendPlansReq) async {
		var url = "${hostname}${_pathPrefix}ListSendPlans";
		var uri = Uri.parse(url);
    	var request = new Request('POST', uri);
		request.headers['Content-Type'] = 'application/json';
    	request.body = json.encode(listSendPlansReq.toJson());
    	var response = await _requester.send(request);
		if (response.statusCode != 200) {
     		throw twirpException(response);
    	}
    	var value = json.decode(response.body);
    	return ListSendPlansResp.fromJson(value);
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



