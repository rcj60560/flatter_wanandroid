import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_app/model/home_model.dart';

int page = 0;
var HOME_URL = "https://www.wanandroid.com/article/list/$page/json";

class HomeDao {
  static Future<HomeModel> fetch(bool refresh) async {
    if (refresh) {
      page = 0;
    } else {
      page++;
    }
    final response = await http.get(HOME_URL);
    if (response.statusCode == 200) {
      Utf8Decoder utf8decoder = Utf8Decoder();
      var result = json.decode(utf8decoder.convert(response.bodyBytes));
      return HomeModel.fromJson(result);
    } else {
      throw Exception(' failed to get home list ');
    }
  }
}
