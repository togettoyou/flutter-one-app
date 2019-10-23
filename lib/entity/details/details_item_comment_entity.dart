class DetailsItemCommentEntity {
  int res;
  DetailsItemCommentData data;

  DetailsItemCommentEntity({this.res, this.data});

  DetailsItemCommentEntity.fromJson(Map<String, dynamic> json) {
    res = json['res'];
    data = json['data'] != null
        ? new DetailsItemCommentData.fromJson(json['data'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['res'] = this.res;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class DetailsItemCommentData {
  List<DetailsItemCommentDataData> data;
  String count;

  DetailsItemCommentData({this.data, this.count});

  DetailsItemCommentData.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = new List<DetailsItemCommentDataData>();
      (json['data'] as List).forEach((v) {
        data.add(new DetailsItemCommentDataData.fromJson(v));
      });
    }
    count = json['count'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    data['count'] = this.count;
    return data;
  }
}

class DetailsItemCommentDataData {
  String delFlag;
  DetailsItemCommentDataDataTouser touser;
  String praisenum;
  String createdAt;
  String type;
  String content;
  String quote;
  String updatedAt;
  String deviceToken;
  String reviewed;
  String id;
  String userInfoId;
  String inputDate;
  DetailsItemCommentDataDataUser user;

  DetailsItemCommentDataData(
      {this.delFlag,
      this.touser,
      this.praisenum,
      this.createdAt,
      this.type,
      this.content,
      this.quote,
      this.updatedAt,
      this.deviceToken,
      this.reviewed,
      this.id,
      this.userInfoId,
      this.inputDate,
      this.user});

  DetailsItemCommentDataData.fromJson(Map<String, dynamic> json) {
    delFlag = json['del_flag'];
    touser = json['touser'] != null
        ? new DetailsItemCommentDataDataTouser.fromJson(json['touser'])
        : null;
    praisenum = json['praisenum'].toString();
    createdAt = json['created_at'];
    type = json['type'].toString();
    content = json['content'];
    quote = json['quote'];
    updatedAt = json['updated_at'];
    deviceToken = json['device_token'];
    reviewed = json['reviewed'];
    id = json['id'];
    userInfoId = json['user_info_id'];
    inputDate = json['input_date'];
    user = json['user'] != null
        ? new DetailsItemCommentDataDataUser.fromJson(json['user'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['del_flag'] = this.delFlag;
    if (this.touser != null) {
      data['touser'] = this.touser.toJson();
    }
    data['praisenum'] = this.praisenum;
    data['created_at'] = this.createdAt;
    data['type'] = this.type;
    data['content'] = this.content;
    data['quote'] = this.quote;
    data['updated_at'] = this.updatedAt;
    data['device_token'] = this.deviceToken;
    data['reviewed'] = this.reviewed;
    data['id'] = this.id;
    data['user_info_id'] = this.userInfoId;
    data['input_date'] = this.inputDate;
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    return data;
  }
}

class DetailsItemCommentDataDataTouser {
  String webUrl;
  String userId;
  String userName;

  DetailsItemCommentDataDataTouser({this.webUrl, this.userId, this.userName});

  DetailsItemCommentDataDataTouser.fromJson(Map<String, dynamic> json) {
    webUrl = json['web_url'];
    userId = json['user_id'];
    userName = json['user_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['web_url'] = this.webUrl;
    data['user_id'] = this.userId;
    data['user_name'] = this.userName;
    return data;
  }
}

class DetailsItemCommentDataDataUser {
  String webUrl;
  String userId;
  String userName;

  DetailsItemCommentDataDataUser({this.webUrl, this.userId, this.userName});

  DetailsItemCommentDataDataUser.fromJson(Map<String, dynamic> json) {
    webUrl = json['web_url'];
    userId = json['user_id'];
    userName = json['user_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['web_url'] = this.webUrl;
    data['user_id'] = this.userId;
    data['user_name'] = this.userName;
    return data;
  }
}
