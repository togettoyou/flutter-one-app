///API接口

class Api {
  static final Map<int, String> category = {
    0: "图文",
    1: "阅读",
    2: "连载",
    3: "问答",
    4: "音乐",
    5: "影视",
    8: "电台",
  };

  static final String _baseUrl = "http://v3.wufazhuce.com:8000/api";

  static final String _oneListUrl = "$_baseUrl/onelist/";

  ///获取最新 idList（得到集合ID）
  static final String idListUrl = "$_baseUrl/onelist/idlist";

  ///获取ALL页面专题列表(Banner)
  static final String allBannerUrl =
      "$_baseUrl/banner/list/4?last_id=0&channel=cool";

  ///根据集合ID获取首页oneList（将data替换为获取到的集合ID）
  static String getOneList(String data) {
    return _oneListUrl + data + "/0";
  }
}
