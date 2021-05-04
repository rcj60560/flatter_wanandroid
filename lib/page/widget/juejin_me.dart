import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'juejin_me_item.dart';

class JueJinMe extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new JueJinMeState();
  }
}

class JueJinMeState extends State<JueJinMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("掘金 我的"),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: List.generate(5, (index) {
            return Container(
              child: JueJinItem("我的",index.toString()),
            );
          }),
        ),
      ),
    );
  }
}
