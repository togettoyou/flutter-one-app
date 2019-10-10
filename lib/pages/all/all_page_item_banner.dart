///ALL页面专题Banner子项item

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_one_app/entity/all_page_item_banner_entity.dart';

class AllPageItemBanner extends StatelessWidget {
  AllPageItemBannerData item;

  AllPageItemBanner(this.item);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        children: <Widget>[
          Container(
            child: CachedNetworkImage(
              height: 200.0,
              width: double.infinity,
              fit: BoxFit.cover,
              imageUrl: item.cover,
            ),
            padding: EdgeInsets.all(16.0),
          ),
          Container(
            child: Text(
              "${item.title}",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
            width: double.maxFinite,
            padding: EdgeInsets.only(left: 17.0, bottom: 24.0),
          ),
        ],
      ),
      onTap: () {},
    );
  }
}
