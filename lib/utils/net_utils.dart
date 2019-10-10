///网络请求工具类

import 'package:dio/dio.dart';

Map<String, dynamic> optHeader = {
  'accept-language': 'zh-cn',
  'content-type': 'application/json'
};

var dio = new Dio(BaseOptions(connectTimeout: 30000, headers: optHeader));

class NetUtils {
  static get(
    String url, {
    Map<String, dynamic> params,
    Function success,
    Function fail,
  }) async {
    try {
      var response;
      if (params != null) {
        response = await dio.get(url, queryParameters: params);
      } else {
        response = await dio.get(url);
      }
      success(response.toString());
    } catch (exception) {
      fail(exception);
      print('http request fail: $url ==> $exception');
    }
  }

  static post(
    String url,
    Map<String, dynamic> params, {
    Function success,
    Function fail,
  }) async {
    try {
      var response = await dio.post(url, data: params);
      success(response.toString());
    } catch (exception) {
      fail(exception);
      print('http request fail: $url ==> $exception');
    }
  }
}
