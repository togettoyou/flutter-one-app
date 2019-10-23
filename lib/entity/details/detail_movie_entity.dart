///影视信息详情

class DetailMovieEntity {
  int res;
  DetailMovieData data;

  DetailMovieEntity({this.res, this.data});

  DetailMovieEntity.fromJson(Map<String, dynamic> json) {
    res = json['res'];
    data = json['data'] != null
        ? new DetailMovieData.fromJson(json['data'])
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

class DetailMovieData {
  List<DetailMovieDataData> data;
  String count;

  DetailMovieData({this.data, this.count});

  DetailMovieData.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = new List<DetailMovieDataData>();
      (json['data'] as List).forEach((v) {
        data.add(new DetailMovieDataData.fromJson(v));
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

class DetailMovieDataData {
  String summary;
  String chargeEdt;
  String copyright;
  String audioDuration;
  String praisenum;
  String sort;
  String movieId;
  String title;
  List<DetailMovieDataDataAuthorList> authorList;
  String content;
  String storyType;
  String anchor;
  String id;
  String audio;
  String inputDate;
  DetailMovieDataDataUser user;
  String editorEmail;

  DetailMovieDataData(
      {this.summary,
      this.chargeEdt,
      this.copyright,
      this.audioDuration,
      this.praisenum,
      this.sort,
      this.movieId,
      this.title,
      this.authorList,
      this.content,
      this.storyType,
      this.anchor,
      this.id,
      this.audio,
      this.inputDate,
      this.user,
      this.editorEmail});

  DetailMovieDataData.fromJson(Map<String, dynamic> json) {
    summary = json['summary'];
    chargeEdt = json['charge_edt'];
    copyright = json['copyright'];
    audioDuration = json['audio_duration'];
    praisenum = json['praisenum'].toString();
    sort = json['sort'];
    movieId = json['movie_id'];
    title = json['title'];
    if (json['author_list'] != null) {
      authorList = new List<DetailMovieDataDataAuthorList>();
      (json['author_list'] as List).forEach((v) {
        authorList.add(new DetailMovieDataDataAuthorList.fromJson(v));
      });
    }
    content = json['content'];
    storyType = json['story_type'];
    anchor = json['anchor'];
    id = json['id'];
    audio = json['audio'];
    inputDate = json['input_date'];
    user = json['user'] != null
        ? new DetailMovieDataDataUser.fromJson(json['user'])
        : null;
    editorEmail = json['editor_email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['summary'] = this.summary;
    data['charge_edt'] = this.chargeEdt;
    data['copyright'] = this.copyright;
    data['audio_duration'] = this.audioDuration;
    data['praisenum'] = this.praisenum;
    data['sort'] = this.sort;
    data['movie_id'] = this.movieId;
    data['title'] = this.title;
    if (this.authorList != null) {
      data['author_list'] = this.authorList.map((v) => v.toJson()).toList();
    }
    data['content'] = this.content;
    data['story_type'] = this.storyType;
    data['anchor'] = this.anchor;
    data['id'] = this.id;
    data['audio'] = this.audio;
    data['input_date'] = this.inputDate;
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    data['editor_email'] = this.editorEmail;
    return data;
  }
}

class DetailMovieDataDataAuthorList {
  String summary;
  String wbName;
  String webUrl;
  String userId;
  String userName;
  String fansTotal;
  String isSettled;
  String settledType;
  String desc;

  DetailMovieDataDataAuthorList(
      {this.summary,
      this.wbName,
      this.webUrl,
      this.userId,
      this.userName,
      this.fansTotal,
      this.isSettled,
      this.settledType,
      this.desc});

  DetailMovieDataDataAuthorList.fromJson(Map<String, dynamic> json) {
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

class DetailMovieDataDataUser {
  String summary;
  String wbName;
  String webUrl;
  String userId;
  String userName;
  String fansTotal;
  String isSettled;
  String settledType;
  String desc;

  DetailMovieDataDataUser(
      {this.summary,
      this.wbName,
      this.webUrl,
      this.userId,
      this.userName,
      this.fansTotal,
      this.isSettled,
      this.settledType,
      this.desc});

  DetailMovieDataDataUser.fromJson(Map<String, dynamic> json) {
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
