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
  String result = "result";
  String url = "https://www.wanandroid.com/article/list/1/json";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(color: Colors.red),
              child: Center(
                child: Text("hshs"),
              ),
            ),
            Container(
              height: 300,
              decoration: BoxDecoration(color: Colors.amberAccent),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      print('$index');
                    },
                    child: ListTile(
                      leading: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: Icon(Icons.ac_unit),
                      ),
                      title: Text("sdf"),
                      subtitle: Text("subtitle"),
                      trailing: Icon(Icons.navigate_next),
                    ),
                  );
                },
                itemCount: 20,
              ),
            )
          ],
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
