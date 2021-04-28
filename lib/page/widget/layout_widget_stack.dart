import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LayoutWidgetStack extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LayoutWidgetStackState();
  }
}

class LayoutWidgetStackState extends State<LayoutWidgetStack> {
  int index = 0;
  List des = List.from([
    AlignmentDirectional.bottomStart,
    AlignmentDirectional.bottomCenter,
    AlignmentDirectional.bottomEnd,
    AlignmentDirectional.center,
    AlignmentDirectional.centerEnd,
    AlignmentDirectional.centerStart,
  ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack 控件"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("点我切换排列方式" + des[index % 6].toString()),
              onPressed: () {
                setState(() {
                  index++;
                });
              },
            ),
            Container(
                child: Stack(
              alignment: des[index % 6],
              children: <Widget>[
                Container(
                  color: Colors.red,
                  width: 400,
                  height: 400,
                ),
                Container(
                  color: Colors.green,
                  width: 250,
                  height: 250,
                ),
                Container(
                  color: Colors.blue,
                  width: 150,
                  height: 150,
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
