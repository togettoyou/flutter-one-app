///ALL导航页面

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_one_app/api/api.dart';
import 'package:flutter_one_app/entity/all_page_item_banner_entity.dart';
import 'package:flutter_one_app/pages/all/all_page_item_banner.dart';
import 'package:flutter_one_app/pages/all/all_page_item_category.dart';
import 'package:flutter_one_app/utils/net_utils.dart';
import 'package:flutter_one_app/utils/refresh_utils.dart';
import 'package:flutter_one_app/widgets/loading_widget.dart';

class AllPage extends StatefulWidget {
  AllPage({Key key}) : super(key: key);

  @override
  _AllPageState createState() {
    return _AllPageState();
  }
}

class _AllPageState extends State<AllPage> {
  EasyRefreshController _controller = EasyRefreshController();
  List<AllPageItemBannerData> _bannerData;

  @override
  void initState() {
    super.initState();
    getBannerData();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void getBannerData() {
    NetUtils.get(
      Api.allBannerUrl,
      success: (response) {
        setState(() {
          _bannerData =
              AllPageItemBannerEntity.fromJson(json.decode(response)).data;
        });
      },
      fail: (exception) {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ONE IS ALL',
          style: TextStyle(
            color: Colors.black,
            letterSpacing: 3.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.5,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black38,
            ),
          ),
        ],
      ),
      body: Container(
        color: Color(0xFFF4F4F4),
        child: EasyRefresh.custom(
          header: RefreshUtils.defaultHeader(),
          controller: _controller,
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Container(
                width: double.infinity,
                color: Color(0xFFF4F4F4),
                height: 8.0,
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.only(
                  left: 18.0,
                  top: 13.0,
                  bottom: 18.0,
                ),
                child: Text(
                  '分类导航',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                  ),
                ),
                color: Colors.white,
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.only(
                  left: 18.0,
                  right: 18.0,
                  bottom: 20.0,
                ),
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: AllPageItemCategory.name.length,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                  ),
                  itemBuilder: (context, index) {
                    return AllPageItemCategory(index);
                  },
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                width: double.infinity,
                height: 8.0,
                color: Color(0xFFF4F4F4),
              ),
            ),
            SliverToBoxAdapter(
              child: _bannerData == null
                  ? LoadingShimmerWidget()
                  : ListView.separated(
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(
                          child: AllPageItemBanner(_bannerData[index]),
                          color: Colors.white,
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Divider(
                          height: 12.0,
                          color: Color(0xFFF4F4F4),
                        );
                      },
                      itemCount: _bannerData.length,
                    ),
            ),
            SliverToBoxAdapter(
              child: Container(
                width: double.infinity,
                height: 8.0,
                color: Color(0xFFF4F4F4),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.only(
                  left: 18.0,
                  top: 13.0,
                  bottom: 18.0,
                ),
                child: Text(
                  '近期热门作者',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                  ),
                ),
                color: Colors.white,
              ),
            ),
          ],
          onRefresh: () async {
            getBannerData();
            _controller.resetLoadState();
          },
        ),
      ),
    );
  }
}
