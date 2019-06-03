import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NavigatorUtil {
  static push(BuildContext cxt, Widget page) {
    Navigator.push(cxt, MaterialPageRoute(builder: (cxt) => page));
  }
}
