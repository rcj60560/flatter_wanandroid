import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LayoutWidgetWrap extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LayoutWidgetWrapState();
  }
}

class LayoutWidgetWrapState extends State<LayoutWidgetWrap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("流式布局"),
      ),
      body: Container(
        child: Wrap(
          alignment: WrapAlignment.start,
          children: List.generate(15, (index) {
            double w = 50.0 + 10 * index;
            return Container(
              color: Colors.primaries[index],
              height: 50,
              width: w,
              child: Text("$index"),
            );
          }),
        ),
      ),
    );
  }
}
