import 'package:flutter/material.dart';
import 'package:flutter_app/model/home_model_test.dart';

class GridNavItem extends StatelessWidget {
  GridNav gridNavItem;

  GridNavItem({Key key, @required this.gridNavItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Padding(
          padding: EdgeInsets.all(5),
          child: _getGridItem(),
        ));
  }

  _getGridItem() {
    if (gridNavItem == null) return null;
    Hotel hotel = gridNavItem.hotel;
    Travel travel = gridNavItem.travel;
    Flight flight = gridNavItem.flight;

    return Container(
      child: Column(
        children: <Widget>[
          Container(
              child: Row(children: <Widget>[
            Expanded(
                flex: 1,
                child: Container(
                    child: Stack(
                  children: <Widget>[
                    Image.network(hotel.mainItem.icon,
                        height: 70, fit: BoxFit.cover),
                    Text(hotel.mainItem.title)
                  ],
                ))),
            Expanded(
              flex: 1,
              child: GestureDetector(
                child: Text(hotel.item1.title),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: <Widget>[
                  Icon(Icons.hotel, color: Colors.red),
                  Text(hotel.item2.title)
                ],
              ),
            )
          ])),
        ],
      ),
    );
  }
}
