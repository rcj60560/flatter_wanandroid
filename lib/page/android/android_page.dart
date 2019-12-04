import 'package:flutter/material.dart';

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
                        child: Text("activity")),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: RaisedButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.home,
                      ),
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
                ),
                _subItem("title")
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: IconButton(
                    icon: Icon(Icons.home),
                    iconSize: 22,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: RaisedButton(
                    child: Text("haha"),
                    textColor: Colors.red,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: PopupMenuButton(
                      child: Text("abc"),
                      tooltip: "长按提示",
                      initialValue: "hot",
                      itemBuilder: (BuildContext context) {
                        return <PopupMenuItem<String>>[
                          PopupMenuItem<String>(
                            child: Text("热度"),
                            value: "hot",
                          ),
                          PopupMenuItem<String>(
                            child: Text("最新"),
                            value: "new",
                          )
                        ];
                      },
                      onSelected: (String action) {
                        switch (action) {
                          case "hot":
                            print("热度");
                            break;
                          case "new":
                            print("罪行");
                            break;
                        }
                      },
                      onCanceled: () {
                        print("oncancel");
                      }),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(15),
                    child: RaisedButton(
                      child: Text("弹窗"),
                      onPressed: () {
                        SimpleDialog(
                          title: Text("标题"),
                          titlePadding: EdgeInsets.all(10),
                          children: <Widget>[
                            SimpleDialogOption(
                              child: Text("第一行"),
                              onPressed: () {
                                print("111111111111");
                              },
                            ),
                            SimpleDialogOption(
                              child: Text("第二行"),
                              onPressed: () {
                                print("22222222222");
                              },
                            )
                          ],
                          contentPadding: EdgeInsets.all(10),
                        );
                      },
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(15),
                    child: RaisedButton(
                      child: Text("弹窗"),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(15),
                    child: RaisedButton(
                      child: Text("弹窗"),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _subItem(String title) {
    return Expanded(
      flex: 1,
      child: Container(
        margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: RaisedButton(
          child: Text(title),
        ),
      ),
    );
  }
}
