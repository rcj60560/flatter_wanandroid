import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LayoutWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LayoutWidgetState();
  }
}

class LayoutWidgetState extends State<LayoutWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("布局控件"),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: _item(0),
          ),
          Card(
            child: _item(1),
          ),
        ],
      ),
    );
  }

  Widget _item(int index) {
    List alignment = List.from([
      MainAxisAlignment.spaceAround,
      MainAxisAlignment.spaceBetween,
      MainAxisAlignment.spaceEvenly,
      MainAxisAlignment.start,
      MainAxisAlignment.center,
      MainAxisAlignment.end,
    ]);
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Text(getDesByIndex(index)),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: alignment[index],
              children: <Widget>[
                Container(
                  width: 100,
                  height: 50,
                  color: Colors.red,
                ),
                Container(
                  width: 100,
                  height: 50,
                  color: Colors.blue,
                ),
                Container(
                  width: 100,
                  height: 50,
                  color: Colors.green,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  String getDesByIndex(int index) {
    switch (index) {
      case 0:
        return "MainAxisAlignment.spaceAround";
      case 1:
        return " MainAxisAlignment.spaceBetween";
    }
  }
}
