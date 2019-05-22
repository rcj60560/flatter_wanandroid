import 'package:flutter/material.dart';
import 'package:flutter_app/dao/home_dao.dart';
import 'package:flutter_app/model/home_model.dart';
import 'package:flutter_app/model/home_model.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  GlobalKey<EasyRefreshState> _easyRefreshKey =
      new GlobalKey<EasyRefreshState>();
  var datas;

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 150,
              color: Colors.red[200],
              child: Text("banner"),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.red,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Text(
                        datas == null ? "$index" : );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /**
   * 获取首页数据列表
   */
  Future<Null> getData() async {
    HomeModel homeModel = await HomeDao.fetch();
    setState(() {
      datas = homeModel.data.datas;
    });
  }
}
