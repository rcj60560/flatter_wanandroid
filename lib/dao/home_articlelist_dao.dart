import 'dart:convert';

import 'package:flutter_app/model/home_model_test.dart';
import 'package:flutter_app/model/home_articlelist_model.dart';
import 'package:http/http.dart' as http;

class HomeArticleListDao {
  static Future<HomeArticleListModel> fetch() async {
    final response =
        await http.get("https://www.wanandroid.com/article/list/0/json");
    if (response.statusCode == 200) {
      Utf8Decoder utf8decoder = Utf8Decoder();
      var decode = json.decode(utf8decoder.convert(response.bodyBytes));
      return HomeArticleListModel.fromJson(decode);
    } else {
      throw Exception("cant get home articlelist ");
    }
  }

  static Future<HomeDataModel1> getTripData() async {
    final response = await http
        .get("https://www.devio.org/io/flutter_app/json/home_page.json");

    if (response.statusCode == 200) {
      Utf8Decoder utf8decoder = Utf8Decoder();
      var decode = json.decode(utf8decoder.convert(response.bodyBytes));
      return HomeDataModel1.fromJson(decode);
    } else {
      throw Exception("net error");
    }
  }
}
