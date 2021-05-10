import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NetLayout extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new NetLayoutState();
  }
}

class NetLayoutState extends State<NetLayout> {
  String result = "result";
  String url = "https://www.wanandroid.com/article/list/1/json";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("网络请求"),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              RaisedButton(
                child: Text("dio请求数据"),
                onPressed: () {
                  getData();
                },
              ),
              Text(result)
            ],
          ),
        ),
      ),
    );
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
