import 'package:flutter/material.dart';
import 'package:flutter_app/dao/home_articlelist_dao.dart';
import 'package:flutter_app/model/home_model_test.dart';
import 'package:flutter_app/page/home_trip/GridNavItem.dart';
import 'package:flutter_app/page/home_trip/LocalNavItem.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class TripPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new TripPageState();
  }
}

class TripPageState extends State<TripPage> {
  List<BannerHome> bannerList = [];
  List<LocalNav> localNavvList = [];
  GridNav gridNav;

  @override
  void initState() {
    super.initState();
    HomeArticleListDao.getTripData().then((response) {
      setState(() {
        bannerList = response.bannerList;
        localNavvList = response.localNavList;
        gridNav = response.gridNav;
      });
    }).catchError((e) {
      print("0000----00000");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("trip"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            banner(),
            LocalNavItem(localNavlist: localNavvList),
            GridNavItem(gridNavItem: gridNav),
            GridNavItem(gridNavItem: gridNav),
            GridNavItem(gridNavItem: gridNav),
          ],
        ),
      ),
    );
  }

  Widget banner() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 160,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return bannerList.length == 0
              ? null
              : new Image.network(bannerList[index].icon, fit: BoxFit.fill);
        },
        itemCount: bannerList.length,
        pagination: new SwiperPagination(),
        control: new SwiperControl(),
      ),
    );
  }
}
