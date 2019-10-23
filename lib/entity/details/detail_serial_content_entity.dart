///连载信息详情

class DetailSerialContentEntity {
  int res;
  DetailSerialContentData data;

  DetailSerialContentEntity({this.res, this.data});

  DetailSerialContentEntity.fromJson(Map<String, dynamic> json) {
    res = json['res'];
    data = json['data'] != null
        ? new DetailSerialContentData.fromJson(json['data'])
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

class DetailSerialContentData {
  String copyright;
  String maketime;
  String audioDuration;
  String inputName;
  String startVideo;
  String title;
  String content;
  String topMediaImage;
  String cover;
  String number;
  String readNum;
  String hideFlag;
  DetailSerialContentDataShareList shareList;
  List<Null> tagList;
  String serialId;
  String topMediaType;
  String id;
  String audio;
  String topMediaFile;
  String lastUpdateDate;
  String editorEmail;
  String commentnum;
  String chargeEdt;
  DetailSerialContentDataAuthor author;
  String lastid;
  String praisenum;
  List<DetailSerialContentDataAuthorList> authorList;
  String sharenum;
  String lastUpdateName;
  String nextid;
  String webUrl;
  String anchor;
  String excerpt;

  DetailSerialContentData(
      {this.copyright,
      this.maketime,
      this.audioDuration,
      this.inputName,
      this.startVideo,
      this.title,
      this.content,
      this.topMediaImage,
      this.cover,
      this.number,
      this.readNum,
      this.hideFlag,
      this.shareList,
      this.tagList,
      this.serialId,
      this.topMediaType,
      this.id,
      this.audio,
      this.topMediaFile,
      this.lastUpdateDate,
      this.editorEmail,
      this.commentnum,
      this.chargeEdt,
      this.author,
      this.lastid,
      this.praisenum,
      this.authorList,
      this.sharenum,
      this.lastUpdateName,
      this.nextid,
      this.webUrl,
      this.anchor,
      this.excerpt});

  DetailSerialContentData.fromJson(Map<String, dynamic> json) {
    copyright = json['copyright'];
    maketime = json['maketime'];
    audioDuration = json['audio_duration'];
    inputName = json['input_name'];
    startVideo = json['start_video'];
    title = json['title'];
    content = json['content'];
    topMediaImage = json['top_media_image'];
    cover = json['cover'];
    number = json['number'];
    readNum = json['read_num'];
    hideFlag = json['hide_flag'];
    shareList = json['share_list'] != null
        ? new DetailSerialContentDataShareList.fromJson(json['share_list'])
        : null;
    if (json['tag_list'] != null) {
      tagList = new List<Null>();
    }
    serialId = json['serial_id'];
    topMediaType = json['top_media_type'];
    id = json['id'];
    audio = json['audio'];
    topMediaFile = json['top_media_file'];
    lastUpdateDate = json['last_update_date'];
    editorEmail = json['editor_email'];
    commentnum = json['commentnum'].toString();
    chargeEdt = json['charge_edt'];
    author = json['author'] != null
        ? new DetailSerialContentDataAuthor.fromJson(json['author'])
        : null;
    lastid = json['lastid'].toString();
    praisenum = json['praisenum'].toString();
    if (json['author_list'] != null) {
      authorList = new List<DetailSerialContentDataAuthorList>();
      (json['author_list'] as List).forEach((v) {
        authorList.add(new DetailSerialContentDataAuthorList.fromJson(v));
      });
    }
    sharenum = json['sharenum'].toString();
    lastUpdateName = json['last_update_name'];
    nextid = json['nextid'].toString();
    webUrl = json['web_url'];
    anchor = json['anchor'];
    excerpt = json['excerpt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['copyright'] = this.copyright;
    data['maketime'] = this.maketime;
    data['audio_duration'] = this.audioDuration;
    data['input_name'] = this.inputName;
    data['start_video'] = this.startVideo;
    data['title'] = this.title;
    data['content'] = this.content;
    data['top_media_image'] = this.topMediaImage;
    data['cover'] = this.cover;
    data['number'] = this.number;
    data['read_num'] = this.readNum;
    data['hide_flag'] = this.hideFlag;
    if (this.shareList != null) {
      data['share_list'] = this.shareList.toJson();
    }
    if (this.tagList != null) {
      data['tag_list'] = [];
    }
    data['serial_id'] = this.serialId;
    data['top_media_type'] = this.topMediaType;
    data['id'] = this.id;
    data['audio'] = this.audio;
    data['top_media_file'] = this.topMediaFile;
    data['last_update_date'] = this.lastUpdateDate;
    data['editor_email'] = this.editorEmail;
    data['commentnum'] = this.commentnum;
    data['charge_edt'] = this.chargeEdt;
    if (this.author != null) {
      data['author'] = this.author.toJson();
    }
    data['lastid'] = this.lastid;
    data['praisenum'] = this.praisenum;
    if (this.authorList != null) {
      data['author_list'] = this.authorList.map((v) => v.toJson()).toList();
    }
    data['sharenum'] = this.sharenum;
    data['last_update_name'] = this.lastUpdateName;
    data['nextid'] = this.nextid;
    data['web_url'] = this.webUrl;
    data['anchor'] = this.anchor;
    data['excerpt'] = this.excerpt;
    return data;
  }
}

class DetailSerialContentDataShareList {
  DetailSerialContentDataShareListQq qq;
  DetailSerialContentDataShareListWx wx;
  DetailSerialContentDataShareListWeibo weibo;
  DetailSerialContentDataShareListWxTimeline wxTimeline;

  DetailSerialContentDataShareList(
      {this.qq, this.wx, this.weibo, this.wxTimeline});

  DetailSerialContentDataShareList.fromJson(Map<String, dynamic> json) {
    qq = json['qq'] != null
        ? new DetailSerialContentDataShareListQq.fromJson(json['qq'])
        : null;
    wx = json['wx'] != null
        ? new DetailSerialContentDataShareListWx.fromJson(json['wx'])
        : null;
    weibo = json['weibo'] != null
        ? new DetailSerialContentDataShareListWeibo.fromJson(json['weibo'])
        : null;
    wxTimeline = json['wx_timeline'] != null
        ? new DetailSerialContentDataShareListWxTimeline.fromJson(
            json['wx_timeline'])
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

class DetailSerialContentDataShareListQq {
  String imgUrl;
  String link;
  String audio;
  String title;
  String desc;

  DetailSerialContentDataShareListQq(
      {this.imgUrl, this.link, this.audio, this.title, this.desc});

  DetailSerialContentDataShareListQq.fromJson(Map<String, dynamic> json) {
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

class DetailSerialContentDataShareListWx {
  String imgUrl;
  String link;
  String audio;
  String title;
  String desc;

  DetailSerialContentDataShareListWx(
      {this.imgUrl, this.link, this.audio, this.title, this.desc});

  DetailSerialContentDataShareListWx.fromJson(Map<String, dynamic> json) {
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

class DetailSerialContentDataShareListWeibo {
  String imgUrl;
  String link;
  String audio;
  String title;
  String desc;

  DetailSerialContentDataShareListWeibo(
      {this.imgUrl, this.link, this.audio, this.title, this.desc});

  DetailSerialContentDataShareListWeibo.fromJson(Map<String, dynamic> json) {
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

class DetailSerialContentDataShareListWxTimeline {
  String imgUrl;
  String link;
  String audio;
  String title;
  String desc;

  DetailSerialContentDataShareListWxTimeline(
      {this.imgUrl, this.link, this.audio, this.title, this.desc});

  DetailSerialContentDataShareListWxTimeline.fromJson(
      Map<String, dynamic> json) {
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

class DetailSerialContentDataAuthor {
  String summary;
  String wbName;
  String webUrl;
  String userId;
  String userName;
  String fansTotal;
  String isSettled;
  String settledType;
  String desc;

  DetailSerialContentDataAuthor(
      {this.summary,
      this.wbName,
      this.webUrl,
      this.userId,
      this.userName,
      this.fansTotal,
      this.isSettled,
      this.settledType,
      this.desc});

  DetailSerialContentDataAuthor.fromJson(Map<String, dynamic> json) {
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

class DetailSerialContentDataAuthorList {
  String summary;
  String wbName;
  String webUrl;
  String userId;
  String userName;
  String fansTotal;
  String isSettled;
  String settledType;
  String desc;

  DetailSerialContentDataAuthorList(
      {this.summary,
      this.wbName,
      this.webUrl,
      this.userId,
      this.userName,
      this.fansTotal,
      this.isSettled,
      this.settledType,
      this.desc});

  DetailSerialContentDataAuthorList.fromJson(Map<String, dynamic> json) {
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
