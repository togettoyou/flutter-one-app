///ALL导航页面

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_one_app/api/api.dart';
import 'package:flutter_one_app/entity/all_page_item_banner_entity.dart';
import 'package:flutter_one_app/entity/all_page_item_hot_author_entity.dart';
import 'package:flutter_one_app/pages/all/all_page_item_banner.dart';
import 'package:flutter_one_app/pages/all/all_page_item_category.dart';
import 'package:flutter_one_app/pages/all/all_page_item_hot_author.dart';
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
  List<AllPageItemHotAuthorData> _hotAuthorData;
  int _index = 0;
  List<AllPageItemHotAuthorData> _showHotAuthorData = List();

  @override
  void initState() {
    super.initState();
    getBannerData();
    getHotAuthorData();
  }

  @override
  void dispose() {
    _controller.dispose();
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

  void getHotAuthorData() {
    NetUtils.get(
      Api.hotAuthorUrl,
      success: (response) {
        setState(() {
          _hotAuthorData =
              AllPageItemHotAuthorEntity.fromJson(json.decode(response)).data;
          _showHotAuthorData.clear();
          _index = 0;
          if (_hotAuthorData.length > 3) {
            _showHotAuthorData.add(_hotAuthorData[_index]);
            _showHotAuthorData.add(_hotAuthorData[++_index]);
            _showHotAuthorData.add(_hotAuthorData[++_index]);
          } else {
            _showHotAuthorData = _hotAuthorData;
          }
        });
      },
      fail: (exception) {},
    );
  }

  ///换一换热门作者
  void changeHotAuthorData() {
    if (_hotAuthorData != null) {
      if (_hotAuthorData.length > 3) {
        setState(() {
          _showHotAuthorData.clear();

          ///_index < _hotAuthorData.length - 1表示还可以继续换下一轮
          for (int i = 0; i < 3 && _index < _hotAuthorData.length - 1; i++) {
            _showHotAuthorData.add(_hotAuthorData[++_index]);
          }

          ///如果不满3个 重头开始追加
          if (_showHotAuthorData.length < 3) {
            _index = 0;
            _showHotAuthorData.add(_hotAuthorData[_index]);
            for (int i = 0;
                i < 3 &&
                    _index < _hotAuthorData.length - 1 &&
                    _showHotAuthorData.length < 3;
                i++) {
              _showHotAuthorData.add(_hotAuthorData[++_index]);
            }
          }
        });
      }
    }
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
              color: Colors.black87,
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
                  ? LoadingShimmerWidget(
                      num: 1,
                    )
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
            SliverToBoxAdapter(
              child: _hotAuthorData == null
                  ? LoadingShimmerWidget(
                      num: 1,
                    )
                  : ListView.separated(
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(
                          child:
                              AllPageItemHotAuthor(_showHotAuthorData[index]),
                          color: Colors.white,
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Divider(
                          height: 0,
                          color: Color(0xFFF4F4F4),
                        );
                      },
                      itemCount: _showHotAuthorData.length,
                    ),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.only(
                  top: 28.0,
                  bottom: 24.0,
                ),
                child: Center(
                  child: InkWell(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.0),
                        border: Border.all(
                          color: Colors.black87,
                          width: 1.0,
                        ),
                      ),
                      child: Container(
                        child: Text(
                          "换一换",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                          ),
                        ),
                        padding: EdgeInsets.fromLTRB(18.0, 5.0, 18.0, 5.0),
                      ),
                    ),
                    onTap: () {
                      changeHotAuthorData();
                    },
                  ),
                ),
                color: Colors.white,
              ),
            ),
          ],
          onRefresh: () async {
            getBannerData();
            getHotAuthorData();
            _controller.resetLoadState();
          },
        ),
      ),
    );
  }
}
