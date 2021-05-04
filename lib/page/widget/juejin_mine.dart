import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JuejinMine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("掘金个人信息页面"),
      ),
      body: Container(
        height: 90,
        margin: EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            _image(),
            SizedBox(width: 10),
            Expanded(child: _center()),
            Icon(Icons.chevron_right),
            SizedBox(width: 10)
          ],
        ),
      ),
    );
  }

  Widget _image() {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image: AssetImage('images/head.png'))),
    );
  }

  Widget _center() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[Text("我的掘金"), Text("我的掘金")],
    );
  }

  Widget _right() {
    return null;
  }
}
