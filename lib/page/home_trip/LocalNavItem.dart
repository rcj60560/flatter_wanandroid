import 'package:flutter/material.dart';
import 'package:flutter_app/model/home_model_test.dart';

class LocalNavItem extends StatelessWidget {
  final List<LocalNav> localNavlist;

  LocalNavItem({Key key, @required this.localNavlist}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: _items(context),
      ),
    );
  }

  Widget _items(BuildContext context) {
    if (localNavlist.length == 0 || localNavlist == null) return null;
    List<Widget> items = [];
    localNavlist.forEach((data) {
      items.add(_item(context, data));
    });
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: items,
    );
  }

  Widget _item(BuildContext context, LocalNav data) {
    return GestureDetector(
      onTap: () {
        print("---->");
      },
      child: Column(
        children: <Widget>[
          Image.network(
            data.icon,
            width: 30,
            height: 30,
          ),
          Text(
            data.title,
            style: TextStyle(fontSize: 10),
          )
        ],
      ),
    );
  }
}
