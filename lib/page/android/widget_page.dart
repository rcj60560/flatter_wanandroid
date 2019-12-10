import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetPage extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _controller.addListener(() {
      print("输入的内容为:" + _controller.text);
    });

    return Scaffold(
      appBar: AppBar(title: Text("my widget")),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(child: Text("对话框")),
              Row(
                children: <Widget>[
                  Builder(
                      builder: (context) => RaisedButton(
                          onPressed: () {
                            showAboutDialog(
                                context: (context),
                                applicationName: "我的测试页面",
                                applicationVersion: "1.0.0");
                          },
                          child: Text("aboutDialog",
                              style: TextStyle(fontSize: 10)))),
                  Builder(
                      builder: (context) => RaisedButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => SimpleDialog(
                                  title: Text("标题"),
                                  titlePadding:
                                      EdgeInsets.fromLTRB(50, 10, 0, 0),
                                  children: <Widget>[
                                    SimpleDialogOption(
                                        child: Text("ok"),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        }),
                                    SimpleDialogOption(
                                        child: Text("cancel"),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        }),
                                  ]),
                            );
                          },
                          child: Text("showDialog",
                              style: TextStyle(fontSize: 10)))),
                  Builder(
                      builder: (context) => RaisedButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                          title: Text("title"),
                                          content: Text("我的内容 我是内容!"),
                                          actions: <Widget>[
                                            FlatButton(
                                                child: Text("Ok"),
                                                onPressed: () {
                                                  print("--------->ok");
                                                  Navigator.of(context).pop();
                                                }),
                                            FlatButton(
                                              child: Text("Cancel"),
                                              onPressed: () {
                                                print("---------->cancel");
                                                Navigator.of(context).pop();
                                              },
                                            )
                                          ]));
                            },
                            child: Text("alertDialog",
                                style: TextStyle(fontSize: 10)),
                          )),
                  Builder(
                    builder: (context) => RaisedButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) => CupertinoAlertDialog(
                                      title: Text("title"),
                                      content: Container(
                                        alignment: Alignment.center,
                                        height: 100,
                                        child: Text("我是内容"),
                                        color: Colors.red,
                                      ),
                                      actions: <Widget>[
                                        CupertinoDialogAction(
                                            child: Text("取消"),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            }),
                                        CupertinoDialogAction(
                                            child: Text("确认"),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            }),
                                      ]));
                        },
                        child: Text("cupertinoalertdialog",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 10))),
                  ),
                ],
              ),
              Container(child: Text("文本框")),
              Column(children: <Widget>[
                Container(
                  decoration: BoxDecoration(color: Colors.red),
                  padding: EdgeInsets.all(5),
                  child: Center(
                      child: Text(
                          "我是文本内容我是文本内容我是文本内容我是文本内容我是文本内容我是文本内容我是文本内容我是文本内容我是文本内容我是文本内容",
                          style: TextStyle(
                              color: Colors.black,
                              backgroundColor: Colors.yellow,
                              fontSize: 20),
                          textAlign: TextAlign.left,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis)),
                )
              ]),
              Container(child: Text("输入框")),
              TextField(
                decoration:
                    InputDecoration(icon: Icon(Icons.input), hintText: "请输入文字"),
                onChanged: (string) {
                  print(string + "--------------->");
                },
                keyboardType: TextInputType.number,
                controller: _controller,
                textInputAction: TextInputAction.go,
              )
            ],
          ),
        ),
      ),
    );
  }
}
