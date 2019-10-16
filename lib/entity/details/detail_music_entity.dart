///音乐信息详情

class DetailMusicEntity {
  int res;
  DetailMusicData data;

  DetailMusicEntity({this.res, this.data});

  DetailMusicEntity.fromJson(Map<String, dynamic> json) {
    res = json['res'];
    data = json['data'] != null
        ? new DetailMusicData.fromJson(json['data'])
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

class DetailMusicData {
  String copyright;
  String maketime;
  String audioDuration;
  String startVideo;
  String title;
  String platform;
  String cover;
  String relatedTo;
  String hideFlag;
  String readNum;
  DetailMusicDataShareList shareList;
  String mediaType;
  List<Null> tagList;
  String id;
  String audio;
  DetailMusicDataStoryAuthor storyAuthor;
  String info;
  String lastUpdateDate;
  String editorEmail;
  int commentnum;
  String relatedMusics;
  String chargeEdt;
  String album;
  DetailMusicDataAuthor author;
  String previousId;
  int praisenum;
  String sort;
  List<DetailMusicDataAuthorList> authorList;
  int sharenum;
  String musicException;
  String feedsCover;
  String webUrl;
  String lyric;
  String storyTitle;
  String anchor;
  String musicId;
  String storySummary;
  String isfirst;
  String story;
  String nextId;

  DetailMusicData(
      {this.copyright,
      this.maketime,
      this.audioDuration,
      this.startVideo,
      this.title,
      this.platform,
      this.cover,
      this.relatedTo,
      this.hideFlag,
      this.readNum,
      this.shareList,
      this.mediaType,
      this.tagList,
      this.id,
      this.audio,
      this.storyAuthor,
      this.info,
      this.lastUpdateDate,
      this.editorEmail,
      this.commentnum,
      this.relatedMusics,
      this.chargeEdt,
      this.album,
      this.author,
      this.previousId,
      this.praisenum,
      this.sort,
      this.authorList,
      this.sharenum,
      this.musicException,
      this.feedsCover,
      this.webUrl,
      this.lyric,
      this.storyTitle,
      this.anchor,
      this.musicId,
      this.storySummary,
      this.isfirst,
      this.story,
      this.nextId});

  DetailMusicData.fromJson(Map<String, dynamic> json) {
    copyright = json['copyright'];
    maketime = json['maketime'];
    audioDuration = json['audio_duration'];
    startVideo = json['start_video'];
    title = json['title'];
    platform = json['platform'];
    cover = json['cover'];
    relatedTo = json['related_to'];
    hideFlag = json['hide_flag'];
    readNum = json['read_num'];
    shareList = json['share_list'] != null
        ? new DetailMusicDataShareList.fromJson(json['share_list'])
        : null;
    mediaType = json['media_type'];
    if (json['tag_list'] != null) {
      tagList = new List<Null>();
    }
    id = json['id'];
    audio = json['audio'];
    storyAuthor = json['story_author'] != null
        ? new DetailMusicDataStoryAuthor.fromJson(json['story_author'])
        : null;
    info = json['info'];
    lastUpdateDate = json['last_update_date'];
    editorEmail = json['editor_email'];
    commentnum = json['commentnum'];
    relatedMusics = json['related_musics'];
    chargeEdt = json['charge_edt'];
    album = json['album'];
    author = json['author'] != null
        ? new DetailMusicDataAuthor.fromJson(json['author'])
        : null;
    previousId = json['previous_id'];
    praisenum = json['praisenum'];
    sort = json['sort'];
    if (json['author_list'] != null) {
      authorList = new List<DetailMusicDataAuthorList>();
      (json['author_list'] as List).forEach((v) {
        authorList.add(new DetailMusicDataAuthorList.fromJson(v));
      });
    }
    sharenum = json['sharenum'];
    musicException = json['music_exception'];
    feedsCover = json['feeds_cover'];
    webUrl = json['web_url'];
    lyric = json['lyric'];
    storyTitle = json['story_title'];
    anchor = json['anchor'];
    musicId = json['music_id'];
    storySummary = json['story_summary'];
    isfirst = json['isfirst'];
    story = json['story'];
    nextId = json['next_id'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['copyright'] = this.copyright;
    data['maketime'] = this.maketime;
    data['audio_duration'] = this.audioDuration;
    data['start_video'] = this.startVideo;
    data['title'] = this.title;
    data['platform'] = this.platform;
    data['cover'] = this.cover;
    data['related_to'] = this.relatedTo;
    data['hide_flag'] = this.hideFlag;
    data['read_num'] = this.readNum;
    if (this.shareList != null) {
      data['share_list'] = this.shareList.toJson();
    }
    data['media_type'] = this.mediaType;
    if (this.tagList != null) {
      data['tag_list'] = [];
    }
    data['id'] = this.id;
    data['audio'] = this.audio;
    if (this.storyAuthor != null) {
      data['story_author'] = this.storyAuthor.toJson();
    }
    data['info'] = this.info;
    data['last_update_date'] = this.lastUpdateDate;
    data['editor_email'] = this.editorEmail;
    data['commentnum'] = this.commentnum;
    data['related_musics'] = this.relatedMusics;
    data['charge_edt'] = this.chargeEdt;
    data['album'] = this.album;
    if (this.author != null) {
      data['author'] = this.author.toJson();
    }
    data['previous_id'] = this.previousId;
    data['praisenum'] = this.praisenum;
    data['sort'] = this.sort;
    if (this.authorList != null) {
      data['author_list'] = this.authorList.map((v) => v.toJson()).toList();
    }
    data['sharenum'] = this.sharenum;
    data['music_exception'] = this.musicException;
    data['feeds_cover'] = this.feedsCover;
    data['web_url'] = this.webUrl;
    data['lyric'] = this.lyric;
    data['story_title'] = this.storyTitle;
    data['anchor'] = this.anchor;
    data['music_id'] = this.musicId;
    data['story_summary'] = this.storySummary;
    data['isfirst'] = this.isfirst;
    data['story'] = this.story;
    data['next_id'] = this.nextId;
    return data;
  }
}

class DetailMusicDataShareList {
  DetailMusicDataShareListQq qq;
  DetailMusicDataShareListWx wx;
  DetailMusicDataShareListWeibo weibo;
  DetailMusicDataShareListWxTimeline wxTimeline;

  DetailMusicDataShareList({this.qq, this.wx, this.weibo, this.wxTimeline});

  DetailMusicDataShareList.fromJson(Map<String, dynamic> json) {
    qq = json['qq'] != null
        ? new DetailMusicDataShareListQq.fromJson(json['qq'])
        : null;
    wx = json['wx'] != null
        ? new DetailMusicDataShareListWx.fromJson(json['wx'])
        : null;
    weibo = json['weibo'] != null
        ? new DetailMusicDataShareListWeibo.fromJson(json['weibo'])
        : null;
    wxTimeline = json['wx_timeline'] != null
        ? new DetailMusicDataShareListWxTimeline.fromJson(json['wx_timeline'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.qq != null) {
      data['qq'] = this.qq.toJson();
    }
    if (this.wx != null) {
      data['wx'] = this.wx.toJson();
    }
    if (this.weibo != null) {
      data['weibo'] = this.weibo.toJson();
    }
    if (this.wxTimeline != null) {
      data['wx_timeline'] = this.wxTimeline.toJson();
    }
    return data;
  }
}

class DetailMusicDataShareListQq {
  String imgUrl;
  String link;
  String audio;
  String title;
  String desc;

  DetailMusicDataShareListQq(
      {this.imgUrl, this.link, this.audio, this.title, this.desc});

  DetailMusicDataShareListQq.fromJson(Map<String, dynamic> json) {
    imgUrl = json['imgUrl'];
    link = json['link'];
    audio = json['audio'];
    title = json['title'];
    desc = json['desc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imgUrl'] = this.imgUrl;
    data['link'] = this.link;
    data['audio'] = this.audio;
    data['title'] = this.title;
    data['desc'] = this.desc;
    return data;
  }
}

class DetailMusicDataShareListWx {
  String imgUrl;
  String link;
  String audio;
  String title;
  String desc;

  DetailMusicDataShareListWx(
      {this.imgUrl, this.link, this.audio, this.title, this.desc});

  DetailMusicDataShareListWx.fromJson(Map<String, dynamic> json) {
    imgUrl = json['imgUrl'];
    link = json['link'];
    audio = json['audio'];
    title = json['title'];
    desc = json['desc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imgUrl'] = this.imgUrl;
    data['link'] = this.link;
    data['audio'] = this.audio;
    data['title'] = this.title;
    data['desc'] = this.desc;
    return data;
  }
}

class DetailMusicDataShareListWeibo {
  String imgUrl;
  String link;
  String audio;
  String title;
  String desc;

  DetailMusicDataShareListWeibo(
      {this.imgUrl, this.link, this.audio, this.title, this.desc});

  DetailMusicDataShareListWeibo.fromJson(Map<String, dynamic> json) {
    imgUrl = json['imgUrl'];
    link = json['link'];
    audio = json['audio'];
    title = json['title'];
    desc = json['desc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imgUrl'] = this.imgUrl;
    data['link'] = this.link;
    data['audio'] = this.audio;
    data['title'] = this.title;
    data['desc'] = this.desc;
    return data;
  }
}

class DetailMusicDataShareListWxTimeline {
  String imgUrl;
  String link;
  String audio;
  String title;
  String desc;

  DetailMusicDataShareListWxTimeline(
      {this.imgUrl, this.link, this.audio, this.title, this.desc});

  DetailMusicDataShareListWxTimeline.fromJson(Map<String, dynamic> json) {
    imgUrl = json['imgUrl'];
    link = json['link'];
    audio = json['audio'];
    title = json['title'];
    desc = json['desc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imgUrl'] = this.imgUrl;
    data['link'] = this.link;
    data['audio'] = this.audio;
    data['title'] = this.title;
    data['desc'] = this.desc;
    return data;
  }
}

class DetailMusicDataStoryAuthor {
  String summary;
  String wbName;
  String webUrl;
  String userId;
  String userName;
  String fansTotal;
  String isSettled;
  String settledType;
  String desc;

  DetailMusicDataStoryAuthor(
      {this.summary,
      this.wbName,
      this.webUrl,
      this.userId,
      this.userName,
      this.fansTotal,
      this.isSettled,
      this.settledType,
      this.desc});

  DetailMusicDataStoryAuthor.fromJson(Map<String, dynamic> json) {
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

class DetailMusicDataAuthor {
  String summary;
  String wbName;
  String webUrl;
  String userId;
  String userName;
  String fansTotal;
  String isSettled;
  String settledType;
  String desc;

  DetailMusicDataAuthor(
      {this.summary,
      this.wbName,
      this.webUrl,
      this.userId,
      this.userName,
      this.fansTotal,
      this.isSettled,
      this.settledType,
      this.desc});

  DetailMusicDataAuthor.fromJson(Map<String, dynamic> json) {
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

class DetailMusicDataAuthorList {
  String summary;
  String wbName;
  String webUrl;
  String userId;
  String userName;
  String fansTotal;
  String isSettled;
  String settledType;
  String desc;

  DetailMusicDataAuthorList(
      {this.summary,
      this.wbName,
      this.webUrl,
      this.userId,
      this.userName,
      this.fansTotal,
      this.isSettled,
      this.settledType,
      this.desc});

  DetailMusicDataAuthorList.fromJson(Map<String, dynamic> json) {
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
