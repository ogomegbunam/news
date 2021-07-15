import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news/constants.dart';
import 'package:news/model/newsInfo.dart';
import 'package:news/models/newsInfo.dart';

class APIConsuming {
  Future<NewsModel> getNews() async {
    var chris = http.Client();
    var newsModel;
    try {
      var response = await chris.get(Strings.news_url);

      if (response.statusCode == 200) {
        var jsonString = response.body;

        var jsonMap = json.decode(jsonString);

        newsModel = NewsModel.fromJson(jsonMap);
      }
    } catch (e) {
      print(e.toString());
    }
    return newsModel;
  }
}
