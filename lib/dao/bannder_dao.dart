import 'dart:async';
import 'dart:convert';
import 'package:flutter_app/model/banner_moedl.dart';
import 'package:http/http.dart' as http;

const BANNER_URL = "https://www.wanandroid.com/banner/json";

class BannerDao {
  static Future<BannerModel> fetch() async {
    final response = await http.get(BANNER_URL);
    if (response.statusCode == 200) {
      Utf8Decoder utf8decoder = Utf8Decoder();
      var result = json.decode(utf8decoder.convert(response.bodyBytes));
      return BannerModel.fromJson(result);
    } else {
      throw Exception(' failed to get banner list ');
    }
  }
}
