///ALL导航页面

import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_one_app/pages/all/all_page_item_category.dart';
import 'package:flutter_one_app/utils/refresh_utils.dart';

class AllPage extends StatefulWidget {
  AllPage({Key key}) : super(key: key);

  @override
  _AllPageState createState() {
    return _AllPageState();
  }
}

class _AllPageState extends State<AllPage> {
  EasyRefreshController _controller = EasyRefreshController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
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
        color: Colors.white,
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
                padding: EdgeInsets.only(left: 18.0, top: 13.0, bottom: 13.0),
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
                padding: EdgeInsets.only(left: 18.0, right: 18.0, bottom: 20.0),
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
          ],
          onRefresh: () async {
            _controller.resetLoadState();
          },
        ),
      ),
    );
  }
}
