import 'package:flutter/material.dart';

import 'activity_page.dart';

class Android extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new AndroidState();
  }
}

class AndroidState extends State<Android> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
                      child: Text("activity"),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text("activity"),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text("activity"),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
