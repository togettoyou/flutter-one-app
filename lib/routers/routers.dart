///路由管理

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_one_app/pages/all/category/category_page.dart';
import 'package:flutter_one_app/pages/details/details_page.dart';

///配置路由
final routes = {
  '/categoryPage': (context, {arguments}) => categoryPage(
        arguments: arguments,
      ),
  '/detailsPage': (context, {arguments}) => detailsPage(
        arguments: arguments,
      ),
};

///统一处理路由跳转传参
Function generateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = CupertinoPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          CupertinoPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
  return null;
};
