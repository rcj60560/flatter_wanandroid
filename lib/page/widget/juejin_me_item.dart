import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JueJinItem extends StatelessWidget {
  final String title;
  final String subTitle;

  JueJinItem(this.title, this.subTitle);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        children: <Widget>[
          SizedBox(width: 30),
          Icon(Icons.home),
          SizedBox(width: 30),
          Expanded(child: Text(title)),
          Text(subTitle,
              style: TextStyle(color: Colors.black.withOpacity(0.5))),
          SizedBox(width: 30)
        ],
      ),
    );
  }
}
