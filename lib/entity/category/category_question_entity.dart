///特定日期的问答信息

class CategoryQuestionEntity {
  int res;
  List<CategoryQuestionData> data;

  CategoryQuestionEntity({this.res, this.data});

  CategoryQuestionEntity.fromJson(Map<String, dynamic> json) {
    res = json['res'];
    if (json['data'] != null) {
      data = new List<CategoryQuestionData>();
      (json['data'] as List).forEach((v) {
        data.add(new CategoryQuestionData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['res'] = this.res;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CategoryQuestionData {
  String answerContent;
  String answerTitle;
  String startVideo;
  String questionMakettime;
  String questionTitle;
  List<CategoryQuestionDataAuthorList> authorList;
  String questionId;
  List<CategoryQuestionDataAskerList> askerList;

  CategoryQuestionData(
      {this.answerContent,
      this.answerTitle,
      this.startVideo,
      this.questionMakettime,
      this.questionTitle,
      this.authorList,
      this.questionId,
      this.askerList});

  CategoryQuestionData.fromJson(Map<String, dynamic> json) {
    answerContent = json['answer_content'];
    answerTitle = json['answer_title'];
    startVideo = json['start_video'];
    questionMakettime = json['question_makettime'];
    questionTitle = json['question_title'];
    if (json['author_list'] != null) {
      authorList = new List<CategoryQuestionDataAuthorList>();
      (json['author_list'] as List).forEach((v) {
        authorList.add(new CategoryQuestionDataAuthorList.fromJson(v));
      });
    }
    questionId = json['question_id'];
    if (json['asker_list'] != null) {
      askerList = new List<CategoryQuestionDataAskerList>();
      (json['asker_list'] as List).forEach((v) {
        askerList.add(new CategoryQuestionDataAskerList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['answer_content'] = this.answerContent;
    data['answer_title'] = this.answerTitle;
    data['start_video'] = this.startVideo;
    data['question_makettime'] = this.questionMakettime;
    data['question_title'] = this.questionTitle;
    if (this.authorList != null) {
      data['author_list'] = this.authorList.map((v) => v.toJson()).toList();
    }
    data['question_id'] = this.questionId;
    if (this.askerList != null) {
      data['asker_list'] = this.askerList.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CategoryQuestionDataAuthorList {
  String summary;
  String wbName;
  String webUrl;
  String userId;
  String userName;
  String fansTotal;
  String isSettled;
  String settledType;
  String desc;

  CategoryQuestionDataAuthorList(
      {this.summary,
      this.wbName,
      this.webUrl,
      this.userId,
      this.userName,
      this.fansTotal,
      this.isSettled,
      this.settledType,
      this.desc});

  CategoryQuestionDataAuthorList.fromJson(Map<String, dynamic> json) {
    summary = json['summary'];
    wbName = json['wb_name'];
    webUrl = json['web_url'];
    userId = json['user_id'];
    userName = json['user_name'];
    fansTotal = json['fans_total'];
    isSettled = json['is_settled'];
    settledType = json['settled_type'];
    desc = json['desc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['summary'] = this.summary;
    data['wb_name'] = this.wbName;
    data['web_url'] = this.webUrl;
    data['user_id'] = this.userId;
    data['user_name'] = this.userName;
    data['fans_total'] = this.fansTotal;
    data['is_settled'] = this.isSettled;
    data['settled_type'] = this.settledType;
    data['desc'] = this.desc;
    return data;
  }
}

class CategoryQuestionDataAskerList {
  String summary;
  String wbName;
  String webUrl;
  String userId;
  String userName;
  String fansTotal;
  String isSettled;
  String settledType;
  String desc;

  CategoryQuestionDataAskerList(
      {this.summary,
      this.wbName,
      this.webUrl,
      this.userId,
      this.userName,
      this.fansTotal,
      this.isSettled,
      this.settledType,
      this.desc});

  CategoryQuestionDataAskerList.fromJson(Map<String, dynamic> json) {
    summary = json['summary'];
    wbName = json['wb_name'];
    webUrl = json['web_url'];
    userId = json['user_id'];
    userName = json['user_name'];
    fansTotal = json['fans_total'];
    isSettled = json['is_settled'];
    settledType = json['settled_type'];
    desc = json['desc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['summary'] = this.summary;
    data['wb_name'] = this.wbName;
    data['web_url'] = this.webUrl;
    data['user_id'] = this.userId;
    data['user_name'] = this.userName;
    data['fans_total'] = this.fansTotal;
    data['is_settled'] = this.isSettled;
    data['settled_type'] = this.settledType;
    data['desc'] = this.desc;
    return data;
  }
}
