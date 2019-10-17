///图文信息详情

class DetailHpEntity {
  int res;
  DetailHpData data;

  DetailHpEntity({this.res, this.data});

  DetailHpEntity.fromJson(Map<String, dynamic> json) {
    res = json['res'];
    data =
        json['data'] != null ? new DetailHpData.fromJson(json['data']) : null;
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

class DetailHpData {
  String hpMakettime;
  String contentBgcolor;
  String hpImgUrl;
  String maketime;
  String hpTitle;
  int praisenum;
  int sharenum;
  String hpAuthor;
  String hpContent;
  String templateCategory;
  String ipadUrl;
  String wbImgUrl;
  String webUrl;
  String imageFrom;
  DetailHpDataShareList shareList;
  String hpcontentId;
  String hpImgOriginalUrl;
  String textAuthors;
  String authorId;
  String textFrom;
  String lastUpdateDate;
  String imageAuthors;
  int commentnum;

  DetailHpData(
      {this.hpMakettime,
      this.contentBgcolor,
      this.hpImgUrl,
      this.maketime,
      this.hpTitle,
      this.praisenum,
      this.sharenum,
      this.hpAuthor,
      this.hpContent,
      this.templateCategory,
      this.ipadUrl,
      this.wbImgUrl,
      this.webUrl,
      this.imageFrom,
      this.shareList,
      this.hpcontentId,
      this.hpImgOriginalUrl,
      this.textAuthors,
      this.authorId,
      this.textFrom,
      this.lastUpdateDate,
      this.imageAuthors,
      this.commentnum});

  DetailHpData.fromJson(Map<String, dynamic> json) {
    hpMakettime = json['hp_makettime'];
    contentBgcolor = json['content_bgcolor'];
    hpImgUrl = json['hp_img_url'];
    maketime = json['maketime'];
    hpTitle = json['hp_title'];
    praisenum = json['praisenum'];
    sharenum = json['sharenum'];
    hpAuthor = json['hp_author'];
    hpContent = json['hp_content'];
    templateCategory = json['template_category'];
    ipadUrl = json['ipad_url'];
    wbImgUrl = json['wb_img_url'];
    webUrl = json['web_url'];
    imageFrom = json['image_from'];
    shareList = json['share_list'] != null
        ? new DetailHpDataShareList.fromJson(json['share_list'])
        : null;
    hpcontentId = json['hpcontent_id'];
    hpImgOriginalUrl = json['hp_img_original_url'];
    textAuthors = json['text_authors'];
    authorId = json['author_id'];
    textFrom = json['text_from'];
    lastUpdateDate = json['last_update_date'];
    imageAuthors = json['image_authors'];
    commentnum = json['commentnum'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hp_makettime'] = this.hpMakettime;
    data['content_bgcolor'] = this.contentBgcolor;
    data['hp_img_url'] = this.hpImgUrl;
    data['maketime'] = this.maketime;
    data['hp_title'] = this.hpTitle;
    data['praisenum'] = this.praisenum;
    data['sharenum'] = this.sharenum;
    data['hp_author'] = this.hpAuthor;
    data['hp_content'] = this.hpContent;
    data['template_category'] = this.templateCategory;
    data['ipad_url'] = this.ipadUrl;
    data['wb_img_url'] = this.wbImgUrl;
    data['web_url'] = this.webUrl;
    data['image_from'] = this.imageFrom;
    if (this.shareList != null) {
      data['share_list'] = this.shareList.toJson();
    }
    data['hpcontent_id'] = this.hpcontentId;
    data['hp_img_original_url'] = this.hpImgOriginalUrl;
    data['text_authors'] = this.textAuthors;
    data['author_id'] = this.authorId;
    data['text_from'] = this.textFrom;
    data['last_update_date'] = this.lastUpdateDate;
    data['image_authors'] = this.imageAuthors;
    data['commentnum'] = this.commentnum;
    return data;
  }
}

class DetailHpDataShareList {
  DetailHpDataShareListQq qq;
  DetailHpDataShareListWx wx;
  DetailHpDataShareListWeibo weibo;
  DetailHpDataShareListWxTimeline wxTimeline;

  DetailHpDataShareList({this.qq, this.wx, this.weibo, this.wxTimeline});

  DetailHpDataShareList.fromJson(Map<String, dynamic> json) {
    qq = json['qq'] != null
        ? new DetailHpDataShareListQq.fromJson(json['qq'])
        : null;
    wx = json['wx'] != null
        ? new DetailHpDataShareListWx.fromJson(json['wx'])
        : null;
    weibo = json['weibo'] != null
        ? new DetailHpDataShareListWeibo.fromJson(json['weibo'])
        : null;
    wxTimeline = json['wx_timeline'] != null
        ? new DetailHpDataShareListWxTimeline.fromJson(json['wx_timeline'])
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

class DetailHpDataShareListQq {
  String imgUrl;
  String link;
  String audio;
  String title;
  String desc;

  DetailHpDataShareListQq(
      {this.imgUrl, this.link, this.audio, this.title, this.desc});

  DetailHpDataShareListQq.fromJson(Map<String, dynamic> json) {
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

class DetailHpDataShareListWx {
  String imgUrl;
  String link;
  String audio;
  String title;
  String desc;

  DetailHpDataShareListWx(
      {this.imgUrl, this.link, this.audio, this.title, this.desc});

  DetailHpDataShareListWx.fromJson(Map<String, dynamic> json) {
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

class DetailHpDataShareListWeibo {
  String imgUrl;
  String link;
  String audio;
  String title;
  String desc;

  DetailHpDataShareListWeibo(
      {this.imgUrl, this.link, this.audio, this.title, this.desc});

  DetailHpDataShareListWeibo.fromJson(Map<String, dynamic> json) {
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

class DetailHpDataShareListWxTimeline {
  String imgUrl;
  String link;
  String audio;
  String title;
  String desc;

  DetailHpDataShareListWxTimeline(
      {this.imgUrl, this.link, this.audio, this.title, this.desc});

  DetailHpDataShareListWxTimeline.fromJson(Map<String, dynamic> json) {
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
