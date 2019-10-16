///阅读信息详情

class DetailsEssayEntity {
  int res;
  DetailsEssayData data;

  DetailsEssayEntity({this.res, this.data});

  DetailsEssayEntity.fromJson(Map<String, dynamic> json) {
    res = json['res'];
    data = json['data'] != null
        ? new DetailsEssayData.fromJson(json['data'])
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

class DetailsEssayData {
  String hpMakettime;
  String copyright;
  String audioDuration;
  String maketime;
  String guideWord;
  String hpTitle;
  String startVideo;
  String hpAuthor;
  String hpContent;
  String topMediaImage;
  String cover;
  String wbName;
  String hideFlag;
  String wbImgUrl;
  String authIt;
  DetailsEssayDataShareList shareList;
  List<Null> tagList;
  String topMediaType;
  String audio;
  String topMediaFile;
  String lastUpdateDate;
  String editorEmail;
  int commentnum;
  String subTitle;
  String contentId;
  List<DetailsEssayDataAuthor> author;
  String previousId;
  int praisenum;
  List<DetailsEssayDataAuthorList> authorList;
  int sharenum;
  String hpAuthorIntroduce;
  String webUrl;
  String anchor;
  String nextId;

  DetailsEssayData(
      {this.hpMakettime,
      this.copyright,
      this.audioDuration,
      this.maketime,
      this.guideWord,
      this.hpTitle,
      this.startVideo,
      this.hpAuthor,
      this.hpContent,
      this.topMediaImage,
      this.cover,
      this.wbName,
      this.hideFlag,
      this.wbImgUrl,
      this.authIt,
      this.shareList,
      this.tagList,
      this.topMediaType,
      this.audio,
      this.topMediaFile,
      this.lastUpdateDate,
      this.editorEmail,
      this.commentnum,
      this.subTitle,
      this.contentId,
      this.author,
      this.previousId,
      this.praisenum,
      this.authorList,
      this.sharenum,
      this.hpAuthorIntroduce,
      this.webUrl,
      this.anchor,
      this.nextId});

  DetailsEssayData.fromJson(Map<String, dynamic> json) {
    hpMakettime = json['hp_makettime'];
    copyright = json['copyright'];
    audioDuration = json['audio_duration'];
    maketime = json['maketime'];
    guideWord = json['guide_word'];
    hpTitle = json['hp_title'];
    startVideo = json['start_video'];
    hpAuthor = json['hp_author'];
    hpContent = json['hp_content'];
    topMediaImage = json['top_media_image'];
    cover = json['cover'];
    wbName = json['wb_name'];
    hideFlag = json['hide_flag'];
    wbImgUrl = json['wb_img_url'];
    authIt = json['auth_it'];
    shareList = json['share_list'] != null
        ? new DetailsEssayDataShareList.fromJson(json['share_list'])
        : null;
    if (json['tag_list'] != null) {
      tagList = new List<Null>();
    }
    topMediaType = json['top_media_type'];
    audio = json['audio'];
    topMediaFile = json['top_media_file'];
    lastUpdateDate = json['last_update_date'];
    editorEmail = json['editor_email'];
    commentnum = json['commentnum'];
    subTitle = json['sub_title'];
    contentId = json['content_id'];
    if (json['author'] != null) {
      author = new List<DetailsEssayDataAuthor>();
      (json['author'] as List).forEach((v) {
        author.add(new DetailsEssayDataAuthor.fromJson(v));
      });
    }
    previousId = json['previous_id'];
    praisenum = json['praisenum'];
    if (json['author_list'] != null) {
      authorList = new List<DetailsEssayDataAuthorList>();
      (json['author_list'] as List).forEach((v) {
        authorList.add(new DetailsEssayDataAuthorList.fromJson(v));
      });
    }
    sharenum = json['sharenum'];
    hpAuthorIntroduce = json['hp_author_introduce'];
    webUrl = json['web_url'];
    anchor = json['anchor'];
    nextId = json['next_id'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hp_makettime'] = this.hpMakettime;
    data['copyright'] = this.copyright;
    data['audio_duration'] = this.audioDuration;
    data['maketime'] = this.maketime;
    data['guide_word'] = this.guideWord;
    data['hp_title'] = this.hpTitle;
    data['start_video'] = this.startVideo;
    data['hp_author'] = this.hpAuthor;
    data['hp_content'] = this.hpContent;
    data['top_media_image'] = this.topMediaImage;
    data['cover'] = this.cover;
    data['wb_name'] = this.wbName;
    data['hide_flag'] = this.hideFlag;
    data['wb_img_url'] = this.wbImgUrl;
    data['auth_it'] = this.authIt;
    if (this.shareList != null) {
      data['share_list'] = this.shareList.toJson();
    }
    if (this.tagList != null) {
      data['tag_list'] = [];
    }
    data['top_media_type'] = this.topMediaType;
    data['audio'] = this.audio;
    data['top_media_file'] = this.topMediaFile;
    data['last_update_date'] = this.lastUpdateDate;
    data['editor_email'] = this.editorEmail;
    data['commentnum'] = this.commentnum;
    data['sub_title'] = this.subTitle;
    data['content_id'] = this.contentId;
    if (this.author != null) {
      data['author'] = this.author.map((v) => v.toJson()).toList();
    }
    data['previous_id'] = this.previousId;
    data['praisenum'] = this.praisenum;
    if (this.authorList != null) {
      data['author_list'] = this.authorList.map((v) => v.toJson()).toList();
    }
    data['sharenum'] = this.sharenum;
    data['hp_author_introduce'] = this.hpAuthorIntroduce;
    data['web_url'] = this.webUrl;
    data['anchor'] = this.anchor;
    data['next_id'] = this.nextId;
    return data;
  }
}

class DetailsEssayDataShareList {
  DetailsEssayDataShareListQq qq;
  DetailsEssayDataShareListWx wx;
  DetailsEssayDataShareListWeibo weibo;
  DetailsEssayDataShareListWxTimeline wxTimeline;

  DetailsEssayDataShareList({this.qq, this.wx, this.weibo, this.wxTimeline});

  DetailsEssayDataShareList.fromJson(Map<String, dynamic> json) {
    qq = json['qq'] != null
        ? new DetailsEssayDataShareListQq.fromJson(json['qq'])
        : null;
    wx = json['wx'] != null
        ? new DetailsEssayDataShareListWx.fromJson(json['wx'])
        : null;
    weibo = json['weibo'] != null
        ? new DetailsEssayDataShareListWeibo.fromJson(json['weibo'])
        : null;
    wxTimeline = json['wx_timeline'] != null
        ? new DetailsEssayDataShareListWxTimeline.fromJson(json['wx_timeline'])
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

class DetailsEssayDataShareListQq {
  String imgUrl;
  String link;
  String audio;
  String title;
  String desc;

  DetailsEssayDataShareListQq(
      {this.imgUrl, this.link, this.audio, this.title, this.desc});

  DetailsEssayDataShareListQq.fromJson(Map<String, dynamic> json) {
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

class DetailsEssayDataShareListWx {
  String imgUrl;
  String link;
  String audio;
  String title;
  String desc;

  DetailsEssayDataShareListWx(
      {this.imgUrl, this.link, this.audio, this.title, this.desc});

  DetailsEssayDataShareListWx.fromJson(Map<String, dynamic> json) {
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

class DetailsEssayDataShareListWeibo {
  String imgUrl;
  String link;
  String audio;
  String title;
  String desc;

  DetailsEssayDataShareListWeibo(
      {this.imgUrl, this.link, this.audio, this.title, this.desc});

  DetailsEssayDataShareListWeibo.fromJson(Map<String, dynamic> json) {
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

class DetailsEssayDataShareListWxTimeline {
  String imgUrl;
  String link;
  String audio;
  String title;
  String desc;

  DetailsEssayDataShareListWxTimeline(
      {this.imgUrl, this.link, this.audio, this.title, this.desc});

  DetailsEssayDataShareListWxTimeline.fromJson(Map<String, dynamic> json) {
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

class DetailsEssayDataAuthor {
  String summary;
  String wbName;
  String webUrl;
  String userId;
  String userName;
  String fansTotal;
  String isSettled;
  String settledType;
  String desc;

  DetailsEssayDataAuthor(
      {this.summary,
      this.wbName,
      this.webUrl,
      this.userId,
      this.userName,
      this.fansTotal,
      this.isSettled,
      this.settledType,
      this.desc});

  DetailsEssayDataAuthor.fromJson(Map<String, dynamic> json) {
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

class DetailsEssayDataAuthorList {
  String summary;
  String wbName;
  String webUrl;
  String userId;
  String userName;
  String fansTotal;
  String isSettled;
  String settledType;
  String desc;

  DetailsEssayDataAuthorList(
      {this.summary,
      this.wbName,
      this.webUrl,
      this.userId,
      this.userName,
      this.fansTotal,
      this.isSettled,
      this.settledType,
      this.desc});

  DetailsEssayDataAuthorList.fromJson(Map<String, dynamic> json) {
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
