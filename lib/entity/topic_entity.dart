class TopicEntity {
	int code;
	TopicData data;
	String message;

	TopicEntity({this.code, this.data, this.message});

	TopicEntity.fromJson(Map<String, dynamic> json) {
		code = json['code'];
		data = json['data'] != null ? new TopicData.fromJson(json['data']) : null;
		message = json['message'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['code'] = this.code;
		if (this.data != null) {
      data['data'] = this.data.toJson();
    }
		data['message'] = this.message;
		return data;
	}
}

class TopicData {
	int total;
	int currentPage;
	List<TopicDataList> xList;

	TopicData({this.total, this.currentPage, this.xList});

	TopicData.fromJson(Map<String, dynamic> json) {
		total = json['total'];
		currentPage = json['currentPage'];
		if (json['list'] != null) {
			xList = new List<TopicDataList>();(json['list'] as List).forEach((v) { xList.add(new TopicDataList.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['total'] = this.total;
		data['currentPage'] = this.currentPage;
		if (this.xList != null) {
      data['list'] =  this.xList.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class TopicDataList {
	String masterId;
	String flag;
	String createTime;
	String userName;
	int clickCount;
	int replyCount;
	String content;
	String blockId;
	dynamic lastReplyUser;
	String blockName;
	String topic;
	String id;
	dynamic lastReplyTime;

	TopicDataList({this.masterId, this.flag, this.createTime, this.userName, this.clickCount, this.replyCount, this.content, this.blockId, this.lastReplyUser, this.blockName, this.topic, this.id, this.lastReplyTime});

	TopicDataList.fromJson(Map<String, dynamic> json) {
		masterId = json['master_id'];
		flag = json['flag'];
		createTime = json['create_time'];
		userName = json['user_name'];
		clickCount = json['click_count'];
		replyCount = json['reply_count'];
		content = json['content'];
		blockId = json['block_id'];
		lastReplyUser = json['last_reply_user'];
		blockName = json['block_name'];
		topic = json['topic'];
		id = json['id'];
		lastReplyTime = json['last_reply_time'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['master_id'] = this.masterId;
		data['flag'] = this.flag;
		data['create_time'] = this.createTime;
		data['user_name'] = this.userName;
		data['click_count'] = this.clickCount;
		data['reply_count'] = this.replyCount;
		data['content'] = this.content;
		data['block_id'] = this.blockId;
		data['last_reply_user'] = this.lastReplyUser;
		data['block_name'] = this.blockName;
		data['topic'] = this.topic;
		data['id'] = this.id;
		data['last_reply_time'] = this.lastReplyTime;
		return data;
	}
}
