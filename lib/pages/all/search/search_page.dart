/// 搜索页
import 'package:flutter/material.dart';
import 'package:flutter_one_app/pages/all/all_page_item_category.dart';
import 'package:flutter_one_app/widgets/search_bar.dart';

class SearchBarDelegate extends MySearchDelegate {
  @override
  ThemeData appBarTheme(BuildContext context) {
    var theme = Theme.of(context);
    return super.appBarTheme(context).copyWith(
          primaryColor: theme.scaffoldBackgroundColor,
          primaryColorBrightness: theme.brightness,
        );
  }

  SearchBarDelegate({String hintText = "在这里写下你想寻找的"})
      : super(
          searchFieldLabel: hintText,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.search,
        );

  /// 右边按钮
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      InkWell(
        child: Center(
          child: Container(
            child: Text("取消"),
            padding: EdgeInsets.all(10.0),
          ),
        ),
        onTap: () {
          close(context, null);
        },
      )
    ];
  }

  /// 左边按钮
  @override
  Widget buildLeading(BuildContext context) {
    return null;
  }

  /// 搜到后的内容
  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text("暂无搜索接口"),
    );
  }

  /// 主体内容
  @override
  Widget buildSuggestions(BuildContext context) {
    return Container(
      child: ListView.separated(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.only(top: 50),
            alignment: Alignment.center,
            child: InkWell(
              child: Text(
                AllPageItemCategory.name[index],
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/categoryPage',
                  arguments: {
                    "name": '${AllPageItemCategory.name[index]}',
                    "type": '${AllPageItemCategory.nameEN[index]}',
                  },
                );
              },
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            height: 16.0,
            color: Colors.white,
          );
        },
        itemCount: AllPageItemCategory.name.length,
      ),
      color: Colors.white,
      height: double.maxFinite,
    );
  }
}
