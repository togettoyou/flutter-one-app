///API接口

class Api {
  static final String _baseUrl = "http://v3.wufazhuce.com:8000/api";

  static final String _oneListUrl = "$_baseUrl/onelist/";

  ///获取最新 idList（得到集合ID）
  static final String idListUrl = "$_baseUrl/onelist/idlist";

  ///根据集合ID获取首页oneList（将data替换为获取到的集合ID）
  static String getOneList(String data) {
    return _oneListUrl + data + "/0";
  }
}
