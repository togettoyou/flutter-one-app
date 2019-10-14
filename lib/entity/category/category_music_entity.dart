///特定日期的音乐信息

class CategoryMusicEntity {
  int res;
  List<CategoryMusicData> data;

  CategoryMusicEntity({this.res, this.data});

  CategoryMusicEntity.fromJson(Map<String, dynamic> json) {
    res = json['res'];
    if (json['data'] != null) {
      data = new List<CategoryMusicData>();
      (json['data'] as List).forEach((v) {
        data.add(new CategoryMusicData.fromJson(v));
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

class CategoryMusicData {
  String cover;
  String storyTitle;
  String album;
  CategoryMusicDataAuthor author;
  String startVideo;
  String musicId;
  String id;
  String title;
  List<CategoryMusicDataAuthorList> authorList;
  String platform;

  CategoryMusicData(
      {this.cover,
      this.storyTitle,
      this.album,
      this.author,
      this.startVideo,
      this.musicId,
      this.id,
      this.title,
      this.authorList,
      this.platform});

  CategoryMusicData.fromJson(Map<String, dynamic> json) {
    cover = json['cover'];
    storyTitle = json['story_title'];
    album = json['album'];
    author = json['author'] != null
        ? new CategoryMusicDataAuthor.fromJson(json['author'])
        : null;
    startVideo = json['start_video'];
    musicId = json['music_id'];
    id = json['id'];
    title = json['title'];
    if (json['author_list'] != null) {
      authorList = new List<CategoryMusicDataAuthorList>();
      (json['author_list'] as List).forEach((v) {
        authorList.add(new CategoryMusicDataAuthorList.fromJson(v));
      });
    }
    platform = json['platform'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cover'] = this.cover;
    data['story_title'] = this.storyTitle;
    data['album'] = this.album;
    if (this.author != null) {
      data['author'] = this.author.toJson();
    }
    data['start_video'] = this.startVideo;
    data['music_id'] = this.musicId;
    data['id'] = this.id;
    data['title'] = this.title;
    if (this.authorList != null) {
      data['author_list'] = this.authorList.map((v) => v.toJson()).toList();
    }
    data['platform'] = this.platform;
    return data;
  }
}

class CategoryMusicDataAuthor {
  String summary;
  String wbName;
  String webUrl;
  String userId;
  String userName;
  String fansTotal;
  String isSettled;
  String settledType;
  String desc;

  CategoryMusicDataAuthor(
      {this.summary,
      this.wbName,
      this.webUrl,
      this.userId,
      this.userName,
      this.fansTotal,
      this.isSettled,
      this.settledType,
      this.desc});

  CategoryMusicDataAuthor.fromJson(Map<String, dynamic> json) {
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

class CategoryMusicDataAuthorList {
  String summary;
  String wbName;
  String webUrl;
  String userId;
  String userName;
  String fansTotal;
  String isSettled;
  String settledType;
  String desc;

  CategoryMusicDataAuthorList(
      {this.summary,
      this.wbName,
      this.webUrl,
      this.userId,
      this.userName,
      this.fansTotal,
      this.isSettled,
      this.settledType,
      this.desc});

  CategoryMusicDataAuthorList.fromJson(Map<String, dynamic> json) {
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
