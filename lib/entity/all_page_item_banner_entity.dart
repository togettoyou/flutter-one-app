class AllPageItemBannerEntity {
  int res;
  List<AllPageItemBannerData> data;

  AllPageItemBannerEntity({this.res, this.data});

  AllPageItemBannerEntity.fromJson(Map<String, dynamic> json) {
    res = json['res'];
    if (json['data'] != null) {
      data = new List<AllPageItemBannerData>();
      (json['data'] as List).forEach((v) {
        data.add(new AllPageItemBannerData.fromJson(v));
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

class AllPageItemBannerData {
  String cover;
  bool isStick;
  String contentId;
  List<Null> serialList;
  String linkUrl;
  int id;
  String title;
  int category;

  AllPageItemBannerData(
      {this.cover,
      this.isStick,
      this.contentId,
      this.serialList,
      this.linkUrl,
      this.id,
      this.title,
      this.category});

  AllPageItemBannerData.fromJson(Map<String, dynamic> json) {
    cover = json['cover'];
    isStick = json['is_stick'];
    contentId = json['content_id'];
    if (json['serial_list'] != null) {
      serialList = new List<Null>();
    }
    linkUrl = json['link_url'];
    id = json['id'];
    title = json['title'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cover'] = this.cover;
    data['is_stick'] = this.isStick;
    data['content_id'] = this.contentId;
    if (this.serialList != null) {
      data['serial_list'] = [];
    }
    data['link_url'] = this.linkUrl;
    data['id'] = this.id;
    data['title'] = this.title;
    data['category'] = this.category;
    return data;
  }
}
