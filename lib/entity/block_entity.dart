class BlockEntity {
	int code;
	List<BlockData> data;
	String message;

	BlockEntity({this.code, this.data, this.message});

	BlockEntity.fromJson(Map<String, dynamic> json) {
		code = json['code'];
		if (json['data'] != null) {
			data = new List<BlockData>();(json['data'] as List).forEach((v) { data.add(new BlockData.fromJson(v)); });
		}
		message = json['message'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['code'] = this.code;
		if (this.data != null) {
      data['data'] =  this.data.map((v) => v.toJson()).toList();
    }
		data['message'] = this.message;
		return data;
	}
}

class BlockData {
	String masterId;
	int clickCount;
	String profile;
	String name;
	int topicCount;
	String id;

	BlockData({this.masterId, this.clickCount, this.profile, this.name, this.topicCount, this.id});

	BlockData.fromJson(Map<String, dynamic> json) {
		masterId = json['masterId'];
		clickCount = json['clickCount'];
		profile = json['profile'];
		name = json['name'];
		topicCount = json['topicCount'];
		id = json['id'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['masterId'] = this.masterId;
		data['clickCount'] = this.clickCount;
		data['profile'] = this.profile;
		data['name'] = this.name;
		data['topicCount'] = this.topicCount;
		data['id'] = this.id;
		return data;
	}
}
