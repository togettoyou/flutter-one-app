///问答信息详情

class DetailQuestionEntity {
  int res;
  DetailQuestionData data;

  DetailQuestionEntity({this.res, this.data});

  DetailQuestionEntity.fromJson(Map<String, dynamic> json) {
    res = json['res'];
    data = json['data'] != null
        ? new DetailQuestionData.fromJson(json['data'])
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

class DetailQuestionData {
  String contentBgcolor;
  String recommendFlag;
  String copyright;
  String audioDuration;
  String guideWord;
  String startVideo;
  String questionTitle;
  String cover;
  String readNum;
  DetailQuestionDataAnswerer answerer;
  String answerContent;
  DetailQuestionDataShareList shareList;
  List<Null> tagList;
  String audio;
  String lastUpdateDate;
  String commentnum;
  String chargeEdt;
  String chargeEmail;
  String previousId;
  String praisenum;
  String questionMakettime;
  DetailQuestionDataAsker asker;
  List<DetailQuestionDataAuthorList> authorList;
  String sharenum;
  String questionId;
  List<DetailQuestionDataAskerList> askerList;
  String coverMediaType;
  String webUrl;
  String coverMediaFile;
  String anchor;
  String answerTitle;
  String questionContent;
  String nextId;

  DetailQuestionData(
      {this.contentBgcolor,
      this.recommendFlag,
      this.copyright,
      this.audioDuration,
      this.guideWord,
      this.startVideo,
      this.questionTitle,
      this.cover,
      this.readNum,
      this.answerer,
      this.answerContent,
      this.shareList,
      this.tagList,
      this.audio,
      this.lastUpdateDate,
      this.commentnum,
      this.chargeEdt,
      this.chargeEmail,
      this.previousId,
      this.praisenum,
      this.questionMakettime,
      this.asker,
      this.authorList,
      this.sharenum,
      this.questionId,
      this.askerList,
      this.coverMediaType,
      this.webUrl,
      this.coverMediaFile,
      this.anchor,
      this.answerTitle,
      this.questionContent,
      this.nextId});

  DetailQuestionData.fromJson(Map<String, dynamic> json) {
    contentBgcolor = json['content_bgcolor'];
    recommendFlag = json['recommend_flag'];
    copyright = json['copyright'];
    audioDuration = json['audio_duration'];
    guideWord = json['guide_word'];
    startVideo = json['start_video'];
    questionTitle = json['question_title'];
    cover = json['cover'];
    readNum = json['read_num'];
    answerer = json['answerer'] != null
        ? new DetailQuestionDataAnswerer.fromJson(json['answerer'])
        : null;
    answerContent = json['answer_content'];
    shareList = json['share_list'] != null
        ? new DetailQuestionDataShareList.fromJson(json['share_list'])
        : null;
    if (json['tag_list'] != null) {
      tagList = new List<Null>();
    }
    audio = json['audio'];
    lastUpdateDate = json['last_update_date'];
    commentnum = json['commentnum'].toString();
    chargeEdt = json['charge_edt'];
    chargeEmail = json['charge_email'];
    previousId = json['previous_id'];
    praisenum = json['praisenum'].toString();
    questionMakettime = json['question_makettime'];
    asker = json['asker'] != null
        ? new DetailQuestionDataAsker.fromJson(json['asker'])
        : null;
    if (json['author_list'] != null) {
      authorList = new List<DetailQuestionDataAuthorList>();
      (json['author_list'] as List).forEach((v) {
        authorList.add(new DetailQuestionDataAuthorList.fromJson(v));
      });
    }
    sharenum = json['sharenum'].toString();
    questionId = json['question_id'];
    if (json['asker_list'] != null) {
      askerList = new List<DetailQuestionDataAskerList>();
      (json['asker_list'] as List).forEach((v) {
        askerList.add(new DetailQuestionDataAskerList.fromJson(v));
      });
    }
    coverMediaType = json['cover_media_type'];
    webUrl = json['web_url'];
    coverMediaFile = json['cover_media_file'];
    anchor = json['anchor'];
    answerTitle = json['answer_title'];
    questionContent = json['question_content'];
    nextId = json['next_id'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['content_bgcolor'] = this.contentBgcolor;
    data['recommend_flag'] = this.recommendFlag;
    data['copyright'] = this.copyright;
    data['audio_duration'] = this.audioDuration;
    data['guide_word'] = this.guideWord;
    data['start_video'] = this.startVideo;
    data['question_title'] = this.questionTitle;
    data['cover'] = this.cover;
    data['read_num'] = this.readNum;
    if (this.answerer != null) {
      data['answerer'] = this.answerer.toJson();
    }
    data['answer_content'] = this.answerContent;
    if (this.shareList != null) {
      data['share_list'] = this.shareList.toJson();
    }
    if (this.tagList != null) {
      data['tag_list'] = [];
    }
    data['audio'] = this.audio;
    data['last_update_date'] = this.lastUpdateDate;
    data['commentnum'] = this.commentnum;
    data['charge_edt'] = this.chargeEdt;
    data['charge_email'] = this.chargeEmail;
    data['previous_id'] = this.previousId;
    data['praisenum'] = this.praisenum;
    data['question_makettime'] = this.questionMakettime;
    if (this.asker != null) {
      data['asker'] = this.asker.toJson();
    }
    if (this.authorList != null) {
      data['author_list'] = this.authorList.map((v) => v.toJson()).toList();
    }
    data['sharenum'] = this.sharenum;
    data['question_id'] = this.questionId;
    if (this.askerList != null) {
      data['asker_list'] = this.askerList.map((v) => v.toJson()).toList();
    }
    data['cover_media_type'] = this.coverMediaType;
    data['web_url'] = this.webUrl;
    data['cover_media_file'] = this.coverMediaFile;
    data['anchor'] = this.anchor;
    data['answer_title'] = this.answerTitle;
    data['question_content'] = this.questionContent;
    data['next_id'] = this.nextId;
    return data;
  }
}

class DetailQuestionDataAnswerer {
  String summary;
  String wbName;
  String webUrl;
  String userId;
  String userName;
  String fansTotal;
  String isSettled;
  String settledType;
  String desc;

  DetailQuestionDataAnswerer(
      {this.summary,
      this.wbName,
      this.webUrl,
      this.userId,
      this.userName,
      this.fansTotal,
      this.isSettled,
      this.settledType,
      this.desc});

  DetailQuestionDataAnswerer.fromJson(Map<String, dynamic> json) {
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

class DetailQuestionDataShareList {
  DetailQuestionDataShareListQq qq;
  DetailQuestionDataShareListWx wx;
  DetailQuestionDataShareListWeibo weibo;
  DetailQuestionDataShareListWxTimeline wxTimeline;

  DetailQuestionDataShareList({this.qq, this.wx, this.weibo, this.wxTimeline});

  DetailQuestionDataShareList.fromJson(Map<String, dynamic> json) {
    qq = json['qq'] != null
        ? new DetailQuestionDataShareListQq.fromJson(json['qq'])
        : null;
    wx = json['wx'] != null
        ? new DetailQuestionDataShareListWx.fromJson(json['wx'])
        : null;
    weibo = json['weibo'] != null
        ? new DetailQuestionDataShareListWeibo.fromJson(json['weibo'])
        : null;
    wxTimeline = json['wx_timeline'] != null
        ? new DetailQuestionDataShareListWxTimeline.fromJson(
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

class DetailQuestionDataShareListQq {
  String imgUrl;
  String link;
  String audio;
  String title;
  String desc;

  DetailQuestionDataShareListQq(
      {this.imgUrl, this.link, this.audio, this.title, this.desc});

  DetailQuestionDataShareListQq.fromJson(Map<String, dynamic> json) {
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

class DetailQuestionDataShareListWx {
  String imgUrl;
  String link;
  String audio;
  String title;
  String desc;

  DetailQuestionDataShareListWx(
      {this.imgUrl, this.link, this.audio, this.title, this.desc});

  DetailQuestionDataShareListWx.fromJson(Map<String, dynamic> json) {
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

class DetailQuestionDataShareListWeibo {
  String imgUrl;
  String link;
  String audio;
  String title;
  String desc;

  DetailQuestionDataShareListWeibo(
      {this.imgUrl, this.link, this.audio, this.title, this.desc});

  DetailQuestionDataShareListWeibo.fromJson(Map<String, dynamic> json) {
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

class DetailQuestionDataShareListWxTimeline {
  String imgUrl;
  String link;
  String audio;
  String title;
  String desc;

  DetailQuestionDataShareListWxTimeline(
      {this.imgUrl, this.link, this.audio, this.title, this.desc});

  DetailQuestionDataShareListWxTimeline.fromJson(Map<String, dynamic> json) {
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

class DetailQuestionDataAsker {
  String summary;
  String wbName;
  String webUrl;
  String userId;
  String userName;
  String fansTotal;
  String isSettled;
  String settledType;
  String desc;

  DetailQuestionDataAsker(
      {this.summary,
      this.wbName,
      this.webUrl,
      this.userId,
      this.userName,
      this.fansTotal,
      this.isSettled,
      this.settledType,
      this.desc});

  DetailQuestionDataAsker.fromJson(Map<String, dynamic> json) {
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

class DetailQuestionDataAuthorList {
  String summary;
  String wbName;
  String webUrl;
  String userId;
  String userName;
  String fansTotal;
  String isSettled;
  String settledType;
  String desc;

  DetailQuestionDataAuthorList(
      {this.summary,
      this.wbName,
      this.webUrl,
      this.userId,
      this.userName,
      this.fansTotal,
      this.isSettled,
      this.settledType,
      this.desc});

  DetailQuestionDataAuthorList.fromJson(Map<String, dynamic> json) {
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

class DetailQuestionDataAskerList {
  String summary;
  String wbName;
  String webUrl;
  String userId;
  String userName;
  String fansTotal;
  String isSettled;
  String settledType;
  String desc;

  DetailQuestionDataAskerList(
      {this.summary,
      this.wbName,
      this.webUrl,
      this.userId,
      this.userName,
      this.fansTotal,
      this.isSettled,
      this.settledType,
      this.desc});

  DetailQuestionDataAskerList.fromJson(Map<String, dynamic> json) {
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
