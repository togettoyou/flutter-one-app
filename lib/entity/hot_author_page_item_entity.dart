class HotAuthorPageItemEntity {
  int res;
  List<HotAuthorPageItemData> data;

  HotAuthorPageItemEntity({this.res, this.data});

  HotAuthorPageItemEntity.fromJson(Map<String, dynamic> json) {
    res = json['res'];
    if (json['data'] != null) {
      data = new List<HotAuthorPageItemData>();
      (json['data'] as List).forEach((v) {
        data.add(new HotAuthorPageItemData.fromJson(v));
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

class HotAuthorPageItemData {
  String contentBgcolor;
  String adType;
  String startVideo;
  String hasReading;
  List<Null> serialList;
  String title;
  String picInfo;
  String number;
  String videoUrl;
  String contentType;
  HotAuthorPageItemDataShareList shareList;
  List<Null> tagList;
  String serialId;
  String id;
  String adClosetime;
  String lastUpdateDate;
  String likeCount;
  String itemId;
  String adPvurlVendor;
  String contentId;
  String forward;
  HotAuthorPageItemDataAuthor author;
  HotAuthorPageItemDataShareInfo shareInfo;
  String wordsInfo;
  String audioPlatform;
  String volume;
  String adId;
  String adPvurl;
  String adShareCnt;
  String adLinkurl;
  String imgUrl;
  String postDate;
  String shareUrl;
  String subtitle;
  String audioUrl;
  String movieStoryId;
  String category;
  String displayCategory;
  String adMakettime;

  HotAuthorPageItemData(
      {this.contentBgcolor,
      this.adType,
      this.startVideo,
      this.hasReading,
      this.serialList,
      this.title,
      this.picInfo,
      this.number,
      this.videoUrl,
      this.contentType,
      this.shareList,
      this.tagList,
      this.serialId,
      this.id,
      this.adClosetime,
      this.lastUpdateDate,
      this.likeCount,
      this.itemId,
      this.adPvurlVendor,
      this.contentId,
      this.forward,
      this.author,
      this.shareInfo,
      this.wordsInfo,
      this.audioPlatform,
      this.volume,
      this.adId,
      this.adPvurl,
      this.adShareCnt,
      this.adLinkurl,
      this.imgUrl,
      this.postDate,
      this.shareUrl,
      this.subtitle,
      this.audioUrl,
      this.movieStoryId,
      this.category,
      this.displayCategory,
      this.adMakettime});

  HotAuthorPageItemData.fromJson(Map<String, dynamic> json) {
    contentBgcolor = json['content_bgcolor'];
    adType = json['ad_type'].toString();
    startVideo = json['start_video'];
    hasReading = json['has_reading'].toString();
    if (json['serial_list'] != null) {
      serialList = new List<Null>();
    }
    title = json['title'];
    picInfo = json['pic_info'];
    number = json['number'].toString();
    videoUrl = json['video_url'];
    contentType = json['content_type'];
    shareList = json['share_list'] != null
        ? new HotAuthorPageItemDataShareList.fromJson(json['share_list'])
        : null;
    if (json['tag_list'] != null) {
      tagList = new List<Null>();
    }
    serialId = json['serial_id'].toString();
    id = json['id'];
    adClosetime = json['ad_closetime'];
    lastUpdateDate = json['last_update_date'];
    likeCount = json['like_count'].toString();
    itemId = json['item_id'];
    adPvurlVendor = json['ad_pvurl_vendor'];
    contentId = json['content_id'];
    forward = json['forward'];
    author = json['author'] != null
        ? new HotAuthorPageItemDataAuthor.fromJson(json['author'])
        : null;
    shareInfo = json['share_info'] != null
        ? new HotAuthorPageItemDataShareInfo.fromJson(json['share_info'])
        : null;
    wordsInfo = json['words_info'];
    audioPlatform = json['audio_platform'].toString();
    volume = json['volume'].toString();
    adId = json['ad_id'].toString();
    adPvurl = json['ad_pvurl'];
    adShareCnt = json['ad_share_cnt'];
    adLinkurl = json['ad_linkurl'];
    imgUrl = json['img_url'];
    postDate = json['post_date'];
    shareUrl = json['share_url'];
    subtitle = json['subtitle'];
    audioUrl = json['audio_url'];
    movieStoryId = json['movie_story_id'].toString();
    category = json['category'];
    displayCategory = json['display_category'].toString();
    adMakettime = json['ad_makettime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['content_bgcolor'] = this.contentBgcolor;
    data['ad_type'] = this.adType;
    data['start_video'] = this.startVideo;
    data['has_reading'] = this.hasReading;
    if (this.serialList != null) {
      data['serial_list'] = [];
    }
    data['title'] = this.title;
    data['pic_info'] = this.picInfo;
    data['number'] = this.number;
    data['video_url'] = this.videoUrl;
    data['content_type'] = this.contentType;
    if (this.shareList != null) {
      data['share_list'] = this.shareList.toJson();
    }
    if (this.tagList != null) {
      data['tag_list'] = [];
    }
    data['serial_id'] = this.serialId;
    data['id'] = this.id;
    data['ad_closetime'] = this.adClosetime;
    data['last_update_date'] = this.lastUpdateDate;
    data['like_count'] = this.likeCount;
    data['item_id'] = this.itemId;
    data['ad_pvurl_vendor'] = this.adPvurlVendor;
    data['content_id'] = this.contentId;
    data['forward'] = this.forward;
    if (this.author != null) {
      data['author'] = this.author.toJson();
    }
    if (this.shareInfo != null) {
      data['share_info'] = this.shareInfo.toJson();
    }
    data['words_info'] = this.wordsInfo;
    data['audio_platform'] = this.audioPlatform;
    data['volume'] = this.volume;
    data['ad_id'] = this.adId;
    data['ad_pvurl'] = this.adPvurl;
    data['ad_share_cnt'] = this.adShareCnt;
    data['ad_linkurl'] = this.adLinkurl;
    data['img_url'] = this.imgUrl;
    data['post_date'] = this.postDate;
    data['share_url'] = this.shareUrl;
    data['subtitle'] = this.subtitle;
    data['audio_url'] = this.audioUrl;
    data['movie_story_id'] = this.movieStoryId;
    data['category'] = this.category;
    data['display_category'] = this.displayCategory;
    data['ad_makettime'] = this.adMakettime;
    return data;
  }
}

class HotAuthorPageItemDataShareList {
  HotAuthorPageItemDataShareListQq qq;
  HotAuthorPageItemDataShareListWx wx;
  HotAuthorPageItemDataShareListWeibo weibo;
  HotAuthorPageItemDataShareListWxTimeline wxTimeline;

  HotAuthorPageItemDataShareList(
      {this.qq, this.wx, this.weibo, this.wxTimeline});

  HotAuthorPageItemDataShareList.fromJson(Map<String, dynamic> json) {
    qq = json['qq'] != null
        ? new HotAuthorPageItemDataShareListQq.fromJson(json['qq'])
        : null;
    wx = json['wx'] != null
        ? new HotAuthorPageItemDataShareListWx.fromJson(json['wx'])
        : null;
    weibo = json['weibo'] != null
        ? new HotAuthorPageItemDataShareListWeibo.fromJson(json['weibo'])
        : null;
    wxTimeline = json['wx_timeline'] != null
        ? new HotAuthorPageItemDataShareListWxTimeline.fromJson(
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

class HotAuthorPageItemDataShareListQq {
  String imgUrl;
  String link;
  String audio;
  String title;
  String desc;

  HotAuthorPageItemDataShareListQq(
      {this.imgUrl, this.link, this.audio, this.title, this.desc});

  HotAuthorPageItemDataShareListQq.fromJson(Map<String, dynamic> json) {
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

class HotAuthorPageItemDataShareListWx {
  String imgUrl;
  String link;
  String audio;
  String title;
  String desc;

  HotAuthorPageItemDataShareListWx(
      {this.imgUrl, this.link, this.audio, this.title, this.desc});

  HotAuthorPageItemDataShareListWx.fromJson(Map<String, dynamic> json) {
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

class HotAuthorPageItemDataShareListWeibo {
  String imgUrl;
  String link;
  String audio;
  String title;
  String desc;

  HotAuthorPageItemDataShareListWeibo(
      {this.imgUrl, this.link, this.audio, this.title, this.desc});

  HotAuthorPageItemDataShareListWeibo.fromJson(Map<String, dynamic> json) {
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

class HotAuthorPageItemDataShareListWxTimeline {
  String imgUrl;
  String link;
  String audio;
  String title;
  String desc;

  HotAuthorPageItemDataShareListWxTimeline(
      {this.imgUrl, this.link, this.audio, this.title, this.desc});

  HotAuthorPageItemDataShareListWxTimeline.fromJson(Map<String, dynamic> json) {
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

class HotAuthorPageItemDataAuthor {
  String summary;
  String wbName;
  String webUrl;
  String userId;
  String userName;
  String fansTotal;
  String isSettled;
  String settledType;
  String desc;

  HotAuthorPageItemDataAuthor(
      {this.summary,
      this.wbName,
      this.webUrl,
      this.userId,
      this.userName,
      this.fansTotal,
      this.isSettled,
      this.settledType,
      this.desc});

  HotAuthorPageItemDataAuthor.fromJson(Map<String, dynamic> json) {
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

class HotAuthorPageItemDataShareInfo {
  String image;
  String title;
  String url;
  String content;

  HotAuthorPageItemDataShareInfo(
      {this.image, this.title, this.url, this.content});

  HotAuthorPageItemDataShareInfo.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    title = json['title'];
    url = json['url'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['title'] = this.title;
    data['url'] = this.url;
    data['content'] = this.content;
    return data;
  }
}
