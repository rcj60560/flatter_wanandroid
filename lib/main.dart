import 'package:flutter/material.dart';
import 'package:flutter_app/navigator/tabnavigator.dart';

void main() => runApp(MyApp());
/**
 * test
 *
 * 新增flutter控件测试页面
 */

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "wanandroid demo",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: TabNavigator(),
    );
  }
}
