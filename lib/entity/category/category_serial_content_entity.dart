///特定日期的连载信息

class CategorySerialContentEntity {
  int res;
  List<CategorySerialContentData> data;

  CategorySerialContentEntity({this.res, this.data});

  CategorySerialContentEntity.fromJson(Map<String, dynamic> json) {
    res = json['res'];
    if (json['data'] != null) {
      data = new List<CategorySerialContentData>();
      (json['data'] as List).forEach((v) {
        data.add(new CategorySerialContentData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['res'] = this.res;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CategorySerialContentData {
  String number;
  String readNum;
  String maketime;
  bool hasAudio;
  CategorySerialContentDataAuthor author;
  String serialId;
  String startVideo;
  List<String> serialList;
  String id;
  String title;
  String excerpt;
  List<CategorySerialContentDataAuthorList> authorList;

  CategorySerialContentData(
      {this.number,
      this.readNum,
      this.maketime,
      this.hasAudio,
      this.author,
      this.serialId,
      this.startVideo,
      this.serialList,
      this.id,
      this.title,
      this.excerpt,
      this.authorList});

  CategorySerialContentData.fromJson(Map<String, dynamic> json) {
    number = json['number'];
    readNum = json['read_num'];
    maketime = json['maketime'];
    hasAudio = json['has_audio'];
    author = json['author'] != null
        ? new CategorySerialContentDataAuthor.fromJson(json['author'])
        : null;
    serialId = json['serial_id'];
    startVideo = json['start_video'];
    serialList = json['serial_list']?.cast<String>();
    id = json['id'];
    title = json['title'];
    excerpt = json['excerpt'];
    if (json['author_list'] != null) {
      authorList = new List<CategorySerialContentDataAuthorList>();
      (json['author_list'] as List).forEach((v) {
        authorList.add(new CategorySerialContentDataAuthorList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['number'] = this.number;
    data['read_num'] = this.readNum;
    data['maketime'] = this.maketime;
    data['has_audio'] = this.hasAudio;
    if (this.author != null) {
      data['author'] = this.author.toJson();
    }
    data['serial_id'] = this.serialId;
    data['start_video'] = this.startVideo;
    data['serial_list'] = this.serialList;
    data['id'] = this.id;
    data['title'] = this.title;
    data['excerpt'] = this.excerpt;
    if (this.authorList != null) {
      data['author_list'] = this.authorList.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CategorySerialContentDataAuthor {
  String summary;
  String wbName;
  String webUrl;
  String userId;
  String userName;
  String fansTotal;
  String isSettled;
  String settledType;
  String desc;

  CategorySerialContentDataAuthor(
      {this.summary,
      this.wbName,
      this.webUrl,
      this.userId,
      this.userName,
      this.fansTotal,
      this.isSettled,
      this.settledType,
      this.desc});

  CategorySerialContentDataAuthor.fromJson(Map<String, dynamic> json) {
    summary = json['summary'];
    wbName = json['wb_name'];
    webUrl = json['web_url'];
    userId = json['user_id'];
    userName = json['user_name'];
    fansTotal = json['fans_total'];
    isSettled = json['is_settled'];
    settledType = json['settled_type'];
    desc = json['desc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['summary'] = this.summary;
    data['wb_name'] = this.wbName;
    data['web_url'] = this.webUrl;
    data['user_id'] = this.userId;
    data['user_name'] = this.userName;
    data['fans_total'] = this.fansTotal;
    data['is_settled'] = this.isSettled;
    data['settled_type'] = this.settledType;
    data['desc'] = this.desc;
    return data;
  }
}

class CategorySerialContentDataAuthorList {
  String summary;
  String wbName;
  String webUrl;
  String userId;
  String userName;
  String fansTotal;
  String isSettled;
  String settledType;
  String desc;

  CategorySerialContentDataAuthorList(
      {this.summary,
      this.wbName,
      this.webUrl,
      this.userId,
      this.userName,
      this.fansTotal,
      this.isSettled,
      this.settledType,
      this.desc});

  CategorySerialContentDataAuthorList.fromJson(Map<String, dynamic> json) {
    summary = json['summary'];
    wbName = json['wb_name'];
    webUrl = json['web_url'];
    userId = json['user_id'];
    userName = json['user_name'];
    fansTotal = json['fans_total'];
    isSettled = json['is_settled'];
    settledType = json['settled_type'];
    desc = json['desc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['summary'] = this.summary;
    data['wb_name'] = this.wbName;
    data['web_url'] = this.webUrl;
    data['user_id'] = this.userId;
    data['user_name'] = this.userName;
    data['fans_total'] = this.fansTotal;
    data['is_settled'] = this.isSettled;
    data['settled_type'] = this.settledType;
    data['desc'] = this.desc;
    return data;
  }
}
