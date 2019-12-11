import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetPage extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    _controller.addListener(() {
      print("输入的内容为:" + _controller.text);
    });
    _scrollController.addListener(() {});

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
              ),
              Container(
                child: Text("snackBar BottomSheet"),
              ),
              Row(children: <Widget>[
                Builder(
                  builder: (context) => RaisedButton(
                      onPressed: () {
                        Scaffold.of(context).showSnackBar(SnackBar(
                          content: Text("haha"),
                          duration: Duration(seconds: 3),
                        ));
                      },
                      child: Text("show snackBar")),
                ),
                Builder(
                    builder: (context) => RaisedButton(
                        child: Text("show  bottomSheet"),
                        onPressed: () {
                          showBottomSheet(
                              context: context,
                              builder: (context) => Container(
                                  height: 300.0,
                                  child: Container(
                                    child: ListView.separated(
                                      itemCount: 10,
                                      itemBuilder: (context, index) {
                                        return GestureDetector(
                                            onTap: () {
                                              showDialog(
                                                  context: context,
                                                  builder: (context) =>
                                                      SimpleDialog(
                                                          title: Text("index :" +
                                                              index
                                                                  .toString())));
                                            },
                                            child: ListTile(
                                              leading: Icon(Icons.widgets),
                                              title: Text(
                                                  "item:" + index.toString()),
                                              trailing: Icon(
                                                  Icons.keyboard_arrow_right),
                                            ));
                                      },
                                      separatorBuilder: (context, index) {
                                        return Container(
                                            constraints:
                                                BoxConstraints.tightFor(
                                                    height: 1),
                                            color: Colors.grey);
                                      },
                                      controller: _scrollController,
                                    ),
                                  )));
                        })),
              ])
            ],
          ),
        ),
      ),
    );
  }

  _getListviewItem() {
    List<Widget> items = [];
    for (int i = 0; i <= 10; i++) {
      items.add(ListTile(
        leading: Icon(Icons.import_contacts),
        title: Text("item :" + i.toString()),
        trailing: Icon(Icons.keyboard_arrow_right),
      ));
    }
    return items;
  }
}
