import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//test
class NetLayout extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new NetLayoutState();
  }
}

class NetLayoutState extends State<NetLayout> {
  String result = "200万+条品论条品论条品论条品论条品论条品论条品论条品论条品论条品论条品论条品论条品论条品论条品论条品论";
  String url = "https://www.wanandroid.com/article/list/1/json";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("listview"),
      ),
      body: Container(
          child: ListView.builder(
        itemBuilder: (context, indext) {
          return Container(
            decoration: BoxDecoration(color: Colors.red),
            margin: EdgeInsets.all(2),
            child: Row(
              children: <Widget>[
                Container(
                  width: 200,
                  height: 240,
                  child: Image.network(
                    'https://img12.360buyimg.com/n1/s450x450_jfs/t1/169312/13/20369/341430/60f7b1efEdc774980/f3c6393c30a1ab74.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(top: 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(top: 5, left: 5),
                            child: Text("Apple iPhone 12")),
                        Container(
                            margin: EdgeInsets.only(top: 5, left: 5),
                            child: Text("支持5G ｜ A14芯片 ｜ 超瓷晶屏")),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Center(
                              child: Text("128GB"),
                            ),
                            Center(
                              child: Text("6.1英寸"),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Center(
                              child: Text("机身存储"),
                            ),
                            Center(
                              child: Text("主屏幕尺寸"),
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5, top: 5),
                          child: Text(
                            "6599.00",
                            style: TextStyle(fontSize: 21, color: Colors.red),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              child: Text(
                                '自营',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ),
                              margin: EdgeInsets.only(left: 5),
                              padding:
                                  EdgeInsets.only(left: 2, right: 2, bottom: 2),
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.rectangle,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4))),
                            ),
                            Container(
                              child: Text(
                                '京东金榜',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                              ),
                              margin: EdgeInsets.only(left: 5),
                              padding:
                                  EdgeInsets.only(left: 2, right: 2, bottom: 2),
                              decoration: BoxDecoration(
                                  color: Colors.amber,
                                  shape: BoxShape.rectangle,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4))),
                            ),
                            Container(
                              child: Text(
                                '增',
                                style:
                                    TextStyle(fontSize: 12, color: Colors.red),
                              ),
                              margin: EdgeInsets.only(left: 5),
                              padding:
                                  EdgeInsets.only(left: 2, right: 2, bottom: 2),
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 1, color: Colors.red),
                                  shape: BoxShape.rectangle,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4))),
                            ),
                          ],
                        ),
                        Text(result)
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
        itemCount: 10,
      )),
    );
  }

  String append() {
    result += result;
    return result;
  }

  void getData() async {
    await Dio().get(url).then((value) {
      print(value.toString());
      setState(() {
        result = value.toString();
      });
    }).catchError((e) {
      print('e:' + e.toString());
      result = e.toString();
    });
  }
}
