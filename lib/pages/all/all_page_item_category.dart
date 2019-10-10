///ALL页面分类导航子项item

import 'package:flutter/material.dart';

class AllPageItemCategory extends StatelessWidget {
  final int _index;
  static final List<String> name = ["图文", "问答", "阅读", "连载", "音乐"];
  static final List<String> nameEN = [
    "hp",
    "question",
    "essay",
    "serialcontent",
    "music"
  ];
  static final List<String> imgUrl = [
    "images/img_all_category_001.png",
    "images/img_all_category_002.png",
    "images/img_all_category_003.png",
    "images/img_all_category_004.png",
    "images/img_all_category_005.png"
  ];

  AllPageItemCategory(this._index);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        child: Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(4.0),
              child: Image.asset(
                '${imgUrl[_index]}',
                fit: BoxFit.cover,
                width: 100.0,
                height: 100.0,
              ),
            ),
            Container(
              child: Text(
                '${name[_index]}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                ),
              ),
              width: double.maxFinite,
              height: 24.0,
              alignment: Alignment.center,
              color: Colors.black45,
            ),
          ],
          alignment: Alignment.bottomCenter,
        ),
        onTap: () {},
      ),
    );
  }
}
