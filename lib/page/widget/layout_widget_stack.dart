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
  int _position = 0;
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
            )),
            SizedBox(
              width: double.infinity,
              height: 10,
              child: Container(
                color: Colors.black12,
              ),
            ),
            _buildIndexStack(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      _position = 0;
                    });
                  },
                  child: Text("1"),
                ),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      _position = 1;
                    });
                  },
                  child: Text("2"),
                ),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      _position = 2;
                    });
                  },
                  child: Text("3"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  _buildIndexStack() {
    return IndexedStack(
        index: _position,
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          Center(
            child: Container(
              width: 200,
              height: 200,
              color: Colors.red,
              child: Icon(
                Icons.face,
                size: 60,
              ),
            ),
          ),
          Center(
            child: Container(
              width: 200,
              height: 200,
              color: Colors.yellow,
              child: Icon(
                Icons.save_alt,
                size: 60,
              ),
            ),
          ),
          Center(
            child: Container(
              width: 200,
              height: 200,
              color: Colors.greenAccent,
              child: Icon(
                Icons.fiber_dvr,
                size: 60,
              ),
            ),
          ),
        ]);
  }
}
