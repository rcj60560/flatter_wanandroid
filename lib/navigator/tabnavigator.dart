import 'package:flutter/material.dart';
import 'package:flutter_app/android/tixi_page.dart';
import 'package:flutter_app/home/home_page.dart';

class TabNavigator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new TabNavigatorState();
  }
}

class TabNavigatorState extends State<TabNavigator> {
  final _defaultColor = Colors.grey;
  final _activeColor = Colors.blue;
  int _currentIndex = 0;
  final PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          HomePage(),
          TiXi(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            _pageController.jumpToPage(index);
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            _bottomItem("home", Icons.home, 0),
            _bottomItem("android", Icons.android, 1),
          ]),
    );
  }

  _bottomItem(String title, IconData icon, int i) {
    return BottomNavigationBarItem(
        icon: Icon(
          icon,
          color: _defaultColor,
        ),
        activeIcon: Icon(
          icon,
          color: _activeColor,
        ),
        title: Text(
          title,
          style: TextStyle(
              color: _currentIndex != i ? _defaultColor : _activeColor),
        ));
  }
}
