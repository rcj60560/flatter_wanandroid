import 'package:flutter/material.dart';
import 'package:flutter_app/widget/webview.dart';

class ActivityLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('activity相关'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
              width: double.infinity,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WebView(
                                url: 'https://www.jianshu.com/',
                                title: '简书首页',
                                hideAppBar: false,
                              )));
//                  NavigatorUtil.push(
//                      context,
//                      WebView(
//                          url: model.url,
//                          title: model.title,
//                          hideAppBar: model.hideAppBar));
                },
                child: Text("启动模式"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
