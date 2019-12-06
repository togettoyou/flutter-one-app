class BannerPageEntity {
  int res;
  BannerPageData data;

  BannerPageEntity({this.res, this.data});

  BannerPageEntity.fromJson(Map<String, dynamic> json) {
    res = json['res'];
    data =
        json['data'] != null ? new BannerPageData.fromJson(json['data']) : null;
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

class BannerPageData {
  int praisenum;
  String title;
  List<Null> authorList;
  String bgColor;
  String htmlContent;
  String webUrl;
  BannerPageDataShareList shareList;
  String fontColor;
  List<Null> tagList;
  bool enableComment;
  String id;
  int category;
  int commentnum;

  BannerPageData(
      {this.praisenum,
      this.title,
      this.authorList,
      this.bgColor,
      this.htmlContent,
      this.webUrl,
      this.shareList,
      this.fontColor,
      this.tagList,
      this.enableComment,
      this.id,
      this.category,
      this.commentnum});

  BannerPageData.fromJson(Map<String, dynamic> json) {
    praisenum = json['praisenum'];
    title = json['title'];
    if (json['author_list'] != null) {
      authorList = new List<Null>();
    }
    bgColor = json['bg_color'];
    htmlContent = json['html_content'];
    webUrl = json['web_url'];
    shareList = json['share_list'] != null
        ? new BannerPageDataShareList.fromJson(json['share_list'])
        : null;
    fontColor = json['font_color'];
    if (json['tag_list'] != null) {
      tagList = new List<Null>();
    }
    enableComment = json['enable_comment'];
    id = json['id'];
    category = json['category'];
    commentnum = json['commentnum'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['praisenum'] = this.praisenum;
    data['title'] = this.title;
    if (this.authorList != null) {
      data['author_list'] = [];
    }
    data['bg_color'] = this.bgColor;
    data['html_content'] = this.htmlContent;
    data['web_url'] = this.webUrl;
    if (this.shareList != null) {
      data['share_list'] = this.shareList.toJson();
    }
    data['font_color'] = this.fontColor;
    if (this.tagList != null) {
      data['tag_list'] = [];
    }
    data['enable_comment'] = this.enableComment;
    data['id'] = this.id;
    data['category'] = this.category;
    data['commentnum'] = this.commentnum;
    return data;
  }
}

class BannerPageDataShareList {
  BannerPageDataShareListQq qq;
  BannerPageDataShareListWx wx;
  BannerPageDataShareListWeibo weibo;
  BannerPageDataShareListWxTimeline wxTimeline;

  BannerPageDataShareList({this.qq, this.wx, this.weibo, this.wxTimeline});

  BannerPageDataShareList.fromJson(Map<String, dynamic> json) {
    qq = json['qq'] != null
        ? new BannerPageDataShareListQq.fromJson(json['qq'])
        : null;
    wx = json['wx'] != null
        ? new BannerPageDataShareListWx.fromJson(json['wx'])
        : null;
    weibo = json['weibo'] != null
        ? new BannerPageDataShareListWeibo.fromJson(json['weibo'])
        : null;
    wxTimeline = json['wx_timeline'] != null
        ? new BannerPageDataShareListWxTimeline.fromJson(json['wx_timeline'])
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

class BannerPageDataShareListQq {
  String imgUrl;
  String link;
  String audio;
  String title;
  String desc;

  BannerPageDataShareListQq(
      {this.imgUrl, this.link, this.audio, this.title, this.desc});

  BannerPageDataShareListQq.fromJson(Map<String, dynamic> json) {
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

class BannerPageDataShareListWx {
  String imgUrl;
  String link;
  String audio;
  String title;
  String desc;

  BannerPageDataShareListWx(
      {this.imgUrl, this.link, this.audio, this.title, this.desc});

  BannerPageDataShareListWx.fromJson(Map<String, dynamic> json) {
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

class BannerPageDataShareListWeibo {
  String imgUrl;
  String link;
  String audio;
  String title;
  String desc;

  BannerPageDataShareListWeibo(
      {this.imgUrl, this.link, this.audio, this.title, this.desc});

  BannerPageDataShareListWeibo.fromJson(Map<String, dynamic> json) {
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

class BannerPageDataShareListWxTimeline {
  String imgUrl;
  String link;
  String audio;
  String title;
  String desc;

  BannerPageDataShareListWxTimeline(
      {this.imgUrl, this.link, this.audio, this.title, this.desc});

  BannerPageDataShareListWxTimeline.fromJson(Map<String, dynamic> json) {
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
