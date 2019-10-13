class OnePageToolBarListItemEntity {
  int res;
  List<OnePageToolBarListItemData> data;

  OnePageToolBarListItemEntity({this.res, this.data});

  OnePageToolBarListItemEntity.fromJson(Map<String, dynamic> json) {
    res = json['res'];
    if (json['data'] != null) {
      data = new List<OnePageToolBarListItemData>();
      (json['data'] as List).forEach((v) {
        data.add(new OnePageToolBarListItemData.fromJson(v));
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

class OnePageToolBarListItemData {
  String date;
  String cover;
  int id;

  OnePageToolBarListItemData({this.date, this.cover, this.id});

  OnePageToolBarListItemData.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    cover = json['cover'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['cover'] = this.cover;
    data['id'] = this.id;
    return data;
  }
}
