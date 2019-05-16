import 'package:flutter/material.dart';

class TiXi extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new TiXiState();
  }
}

class TiXiState extends State<TiXi> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("android"),
      ),
      body: Container(
        child: Text("体系"),
      ),
    );
  }
}
