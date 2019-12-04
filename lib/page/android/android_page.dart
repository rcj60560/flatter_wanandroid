import 'package:flutter/material.dart';
import 'package:flutter_app/dao/home_articlelist_dao.dart';

import 'package:flutter_app/page/android/activity_page.dart';

class Android extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new AndroidState();
  }
}

class AndroidState extends State<Android> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("android"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new ActivityLearn()));
                      },
                      child: Text("activity"),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: RaisedButton(
                      onPressed: () {
                        HomeArticleListDao.fetch().then((homeArticleListModel) {
                          print(homeArticleListModel.data.size);
                        }).catchError((e) {
                          print("e :" + e);
                        });
                      },
                      child: Text("test"),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text("test1"),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
