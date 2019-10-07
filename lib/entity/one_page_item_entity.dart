class OnePageItemEntity {
  int res;
  OnePageItemData data;

  OnePageItemEntity({this.res, this.data});

  OnePageItemEntity.fromJson(Map<String, dynamic> json) {
    res = json['res'];
    data = json['data'] != null
        ? new OnePageItemData.fromJson(json['data'])
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

class OnePageItemData {
  String date;
  List<Null> ad;
  List<OnePageItemDataContentList> contentList;
  OnePageItemDataWeather weather;
  String id;
  OnePageItemDataMenu menu;

  OnePageItemData(
      {this.date, this.ad, this.contentList, this.weather, this.id, this.menu});

  OnePageItemData.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    if (json['ad'] != null) {
      ad = new List<Null>();
    }
    if (json['content_list'] != null) {
      contentList = new List<OnePageItemDataContentList>();
      (json['content_list'] as List).forEach((v) {
        contentList.add(new OnePageItemDataContentList.fromJson(v));
      });
    }
    weather = json['weather'] != null
        ? new OnePageItemDataWeather.fromJson(json['weather'])
        : null;
    id = json['id'];
    menu = json['menu'] != null
        ? new OnePageItemDataMenu.fromJson(json['menu'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    if (this.ad != null) {
      data['ad'] = [];
    }
    if (this.contentList != null) {
      data['content_list'] = this.contentList.map((v) => v.toJson()).toList();
    }
    if (this.weather != null) {
      data['weather'] = this.weather.toJson();
    }
    data['id'] = this.id;
    if (this.menu != null) {
      data['menu'] = this.menu.toJson();
    }
    return data;
  }
}

class OnePageItemDataContentList {
  String contentBgcolor;
  int adType;
  String startVideo;
  int hasReading;
  List<Null> serialList;
  String title;
  String picInfo;
  int number;
  String videoUrl;
  String contentType;
  OnePageItemDataContentListShareList shareList;
  List<Null> tagList;
  int serialId;
  String id;
  String adClosetime;
  String lastUpdateDate;
  int likeCount;
  String itemId;
  String adPvurlVendor;
  String contentId;
  String forward;
  OnePageItemDataContentListAuthor author;
  OnePageItemDataContentListShareInfo shareInfo;
  String wordsInfo;
  int audioPlatform;
  String volume;
  int adId;
  String adPvurl;
  String adShareCnt;
  String adLinkurl;
  String imgUrl;
  String postDate;
  String shareUrl;
  String subtitle;
  String audioUrl;
  int movieStoryId;
  String category;
  String displayCategory;
  String adMakettime;

  OnePageItemDataContentList(
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

  OnePageItemDataContentList.fromJson(Map<String, dynamic> json) {
    contentBgcolor = json['content_bgcolor'];
    adType = json['ad_type'];
    startVideo = json['start_video'];
    hasReading = json['has_reading'];
    if (json['serial_list'] != null) {
      serialList = new List<Null>();
    }
    title = json['title'];
    picInfo = json['pic_info'];
    number = json['number'];
    videoUrl = json['video_url'];
    contentType = json['content_type'];
    shareList = json['share_list'] != null
        ? new OnePageItemDataContentListShareList.fromJson(json['share_list'])
        : null;
    if (json['tag_list'] != null) {
      tagList = new List<Null>();
    }
    serialId = json['serial_id'];
    id = json['id'];
    adClosetime = json['ad_closetime'];
    lastUpdateDate = json['last_update_date'];
    likeCount = json['like_count'];
    itemId = json['item_id'];
    adPvurlVendor = json['ad_pvurl_vendor'];
    contentId = json['content_id'];
    forward = json['forward'];
    author = json['author'] != null
        ? new OnePageItemDataContentListAuthor.fromJson(json['author'])
        : null;
    shareInfo = json['share_info'] != null
        ? new OnePageItemDataContentListShareInfo.fromJson(json['share_info'])
        : null;
    wordsInfo = json['words_info'];
    audioPlatform = json['audio_platform'];
    volume = json['volume'];
    adId = json['ad_id'];
    adPvurl = json['ad_pvurl'];
    adShareCnt = json['ad_share_cnt'];
    adLinkurl = json['ad_linkurl'];
    imgUrl = json['img_url'];
    postDate = json['post_date'];
    shareUrl = json['share_url'];
    subtitle = json['subtitle'];
    audioUrl = json['audio_url'];
    movieStoryId = json['movie_story_id'];
    category = json['category'];
    displayCategory = json['display_category'];
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

class OnePageItemDataContentListShareList {
  OnePageItemDataContentListShareListQq qq;
  OnePageItemDataContentListShareListWx wx;
  OnePageItemDataContentListShareListWeibo weibo;
  OnePageItemDataContentListShareListWxTimeline wxTimeline;

  OnePageItemDataContentListShareList(
      {this.qq, this.wx, this.weibo, this.wxTimeline});

  OnePageItemDataContentListShareList.fromJson(Map<String, dynamic> json) {
    qq = json['qq'] != null
        ? new OnePageItemDataContentListShareListQq.fromJson(json['qq'])
        : null;
    wx = json['wx'] != null
        ? new OnePageItemDataContentListShareListWx.fromJson(json['wx'])
        : null;
    weibo = json['weibo'] != null
        ? new OnePageItemDataContentListShareListWeibo.fromJson(json['weibo'])
        : null;
    wxTimeline = json['wx_timeline'] != null
        ? new OnePageItemDataContentListShareListWxTimeline.fromJson(
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

class OnePageItemDataContentListShareListQq {
  String imgUrl;
  String link;
  String audio;
  String title;
  String desc;

  OnePageItemDataContentListShareListQq(
      {this.imgUrl, this.link, this.audio, this.title, this.desc});

  OnePageItemDataContentListShareListQq.fromJson(Map<String, dynamic> json) {
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

class OnePageItemDataContentListShareListWx {
  String imgUrl;
  String link;
  String audio;
  String title;
  String desc;

  OnePageItemDataContentListShareListWx(
      {this.imgUrl, this.link, this.audio, this.title, this.desc});

  OnePageItemDataContentListShareListWx.fromJson(Map<String, dynamic> json) {
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

class OnePageItemDataContentListShareListWeibo {
  String imgUrl;
  String link;
  String audio;
  String title;
  String desc;

  OnePageItemDataContentListShareListWeibo(
      {this.imgUrl, this.link, this.audio, this.title, this.desc});

  OnePageItemDataContentListShareListWeibo.fromJson(Map<String, dynamic> json) {
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

class OnePageItemDataContentListShareListWxTimeline {
  String imgUrl;
  String link;
  String audio;
  String title;
  String desc;

  OnePageItemDataContentListShareListWxTimeline(
      {this.imgUrl, this.link, this.audio, this.title, this.desc});

  OnePageItemDataContentListShareListWxTimeline.fromJson(
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

class OnePageItemDataContentListAuthor {
  OnePageItemDataContentListAuthor();

  OnePageItemDataContentListAuthor.fromJson(Map<String, dynamic> json) {}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    return data;
  }
}

class OnePageItemDataContentListShareInfo {
  String image;
  String title;
  String url;
  String content;

  OnePageItemDataContentListShareInfo(
      {this.image, this.title, this.url, this.content});

  OnePageItemDataContentListShareInfo.fromJson(Map<String, dynamic> json) {
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

class OnePageItemDataWeather {
  String date;
  String cityName;
  String temperature;
  String humidity;
  String windDirection;
  String hurricane;
  String climate;
  OnePageItemDataWeatherIcons icons;

  OnePageItemDataWeather(
      {this.date,
      this.cityName,
      this.temperature,
      this.humidity,
      this.windDirection,
      this.hurricane,
      this.climate,
      this.icons});

  OnePageItemDataWeather.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    cityName = json['city_name'];
    temperature = json['temperature'];
    humidity = json['humidity'];
    windDirection = json['wind_direction'];
    hurricane = json['hurricane'];
    climate = json['climate'];
    icons = json['icons'] != null
        ? new OnePageItemDataWeatherIcons.fromJson(json['icons'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['city_name'] = this.cityName;
    data['temperature'] = this.temperature;
    data['humidity'] = this.humidity;
    data['wind_direction'] = this.windDirection;
    data['hurricane'] = this.hurricane;
    data['climate'] = this.climate;
    if (this.icons != null) {
      data['icons'] = this.icons.toJson();
    }
    return data;
  }
}

class OnePageItemDataWeatherIcons {
  String night;
  String day;

  OnePageItemDataWeatherIcons({this.night, this.day});

  OnePageItemDataWeatherIcons.fromJson(Map<String, dynamic> json) {
    night = json['night'];
    day = json['day'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['night'] = this.night;
    data['day'] = this.day;
    return data;
  }
}

class OnePageItemDataMenu {
  String vol;
  List<OnePageItemDatamanuList> xList;

  OnePageItemDataMenu({this.vol, this.xList});

  OnePageItemDataMenu.fromJson(Map<String, dynamic> json) {
    vol = json['vol'];
    if (json['list'] != null) {
      xList = new List<OnePageItemDatamanuList>();
      (json['list'] as List).forEach((v) {
        xList.add(new OnePageItemDatamanuList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['vol'] = this.vol;
    if (this.xList != null) {
      data['list'] = this.xList.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class OnePageItemDatamanuList {
  String contentType;
  String contentId;
  String title;

  OnePageItemDatamanuList({this.contentType, this.contentId, this.title});

  OnePageItemDatamanuList.fromJson(Map<String, dynamic> json) {
    contentType = json['content_type'];
    contentId = json['content_id'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['content_type'] = this.contentType;
    data['content_id'] = this.contentId;
    data['title'] = this.title;
    return data;
  }
}
