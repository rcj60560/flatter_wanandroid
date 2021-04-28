import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LayoutWidgetRow extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LayoutWidgetRowState();
  }
}

class LayoutWidgetRowState extends State<LayoutWidgetRow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row Column 控件"),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: _item_row(0),
          ),
          Card(
            child: _item_row(1),
          ),
          Card(
            child: _item_row(2),
          ),
          Card(
            child: _item_row(3),
          ),
          Card(
            child: _item_row(4),
          ),
          Card(
            child: _item_row(5),
          ),
          Card(
            child: _item_column(0),
          ),
        ],
      ),
    );
  }

  Widget _item_row(int index) {
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

  Widget _item_column(int index) {
    List alignment = List.from([
      MainAxisAlignment.spaceAround,
      MainAxisAlignment.spaceBetween,
      MainAxisAlignment.spaceEvenly,
      MainAxisAlignment.start,
      MainAxisAlignment.center,
      MainAxisAlignment.end,
    ]);
    return Container(
      color: Colors.yellow,
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Text(getDesByIndex(index)),
          Container(
            height: 600,
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 150,
                  color: Colors.red,
                ),
                Container(
                  width: 100,
                  height: 150,
                  color: Colors.blue,
                ),
                Container(
                  width: 100,
                  height: 150,
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
      case 2:
        return " MainAxisAlignment.spaceEvenly";
      case 3:
        return "MainAxisAlignment.start";
      case 4:
        return "MainAxisAlignment.center";
      case 5:
        return "MainAxisAlignment.end";
    }
  }
}
