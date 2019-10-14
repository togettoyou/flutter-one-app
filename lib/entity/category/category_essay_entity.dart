///特定日期的阅读信息

class CategoryEssayEntity {
  int res;
  List<CategoryEssayData> data;

  CategoryEssayEntity({this.res, this.data});

  CategoryEssayEntity.fromJson(Map<String, dynamic> json) {
    res = json['res'];
    if (json['data'] != null) {
      data = new List<CategoryEssayData>();
      (json['data'] as List).forEach((v) {
        data.add(new CategoryEssayData.fromJson(v));
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

class CategoryEssayData {
  String hpMakettime;
  String guideWord;
  bool hasAudio;
  String contentId;
  String hpTitle;
  List<CategoryEssayDataAuthor> author;
  String startVideo;
  List<CategoryEssayDataAuthorList> authorList;

  CategoryEssayData(
      {this.hpMakettime,
      this.guideWord,
      this.hasAudio,
      this.contentId,
      this.hpTitle,
      this.author,
      this.startVideo,
      this.authorList});

  CategoryEssayData.fromJson(Map<String, dynamic> json) {
    hpMakettime = json['hp_makettime'];
    guideWord = json['guide_word'];
    hasAudio = json['has_audio'];
    contentId = json['content_id'];
    hpTitle = json['hp_title'];
    if (json['author'] != null) {
      author = new List<CategoryEssayDataAuthor>();
      (json['author'] as List).forEach((v) {
        author.add(new CategoryEssayDataAuthor.fromJson(v));
      });
    }
    startVideo = json['start_video'];
    if (json['author_list'] != null) {
      authorList = new List<CategoryEssayDataAuthorList>();
      (json['author_list'] as List).forEach((v) {
        authorList.add(new CategoryEssayDataAuthorList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hp_makettime'] = this.hpMakettime;
    data['guide_word'] = this.guideWord;
    data['has_audio'] = this.hasAudio;
    data['content_id'] = this.contentId;
    data['hp_title'] = this.hpTitle;
    if (this.author != null) {
      data['author'] = this.author.map((v) => v.toJson()).toList();
    }
    data['start_video'] = this.startVideo;
    if (this.authorList != null) {
      data['author_list'] = this.authorList.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CategoryEssayDataAuthor {
  String summary;
  String wbName;
  String webUrl;
  String userId;
  String userName;
  String fansTotal;
  String isSettled;
  String settledType;
  String desc;

  CategoryEssayDataAuthor(
      {this.summary,
      this.wbName,
      this.webUrl,
      this.userId,
      this.userName,
      this.fansTotal,
      this.isSettled,
      this.settledType,
      this.desc});

  CategoryEssayDataAuthor.fromJson(Map<String, dynamic> json) {
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

class CategoryEssayDataAuthorList {
  String summary;
  String wbName;
  String webUrl;
  String userId;
  String userName;
  String fansTotal;
  String isSettled;
  String settledType;
  String desc;

  CategoryEssayDataAuthorList(
      {this.summary,
      this.wbName,
      this.webUrl,
      this.userId,
      this.userName,
      this.fansTotal,
      this.isSettled,
      this.settledType,
      this.desc});

  CategoryEssayDataAuthorList.fromJson(Map<String, dynamic> json) {
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
