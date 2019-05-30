import 'package:flutter/material.dart';
import 'package:flutter_app/dao/home_dao.dart';
import 'package:flutter_app/model/home_model.dart';
import 'package:flutter_app/model/home_model.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:common_utils/common_utils.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  GlobalKey<EasyRefreshState> _easyRefreshKey =
      new GlobalKey<EasyRefreshState>();
  List<Datas> datas = new List();

  ScrollController _scrollController = new ScrollController();
  bool isLoading = false;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    getData(true);
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
                child: datas.length == 0
                    ? new Center(
                        child: Text("暂无数据"),
                      )
                    : new RefreshIndicator(
                        child: ListView.builder(
                          controller: _scrollController,
                          itemBuilder: (context, index) {
                            return _getItem(datas, index);
                          },
                          itemCount: datas.length,
                        ),
                        onRefresh: _onRefresh,
                      )
//              child: Container(
//                child: ListView.builder(
//                  itemCount: datas.length,
//                  itemBuilder: (context, index) {
//                    return _getItem(datas, index);
//                  },
//                ),
//              ),
                ),
          ],
        ),
      ),
    );
  }

  /**
   * 获取首页数据列表
   */
  Future<Null> getData(bool refresh) async {
    HomeModel homeModel = await HomeDao.fetch(refresh);
    if (refresh) {
      datas.clear();
      setState(() {
        datas.addAll(homeModel.data.datas);
      });
    } else {
      setState(() {
        datas.addAll(homeModel.data.datas);
      });
    }
  }

  Widget _getItem(List<Datas> datas, int index) {
    var data = datas[index];
    return GestureDetector(
      onTap: () {
        print("--->" + index.toString());
      },
      child: Card(
        elevation: 5,
        margin: EdgeInsets.all(10),
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                data.title,
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              Container(
                margin: EdgeInsets.only(top: 5, bottom: 5),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.perm_contact_calendar),
                    Text(
                      data.author,
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text("    "),
                    Icon(Icons.access_time),
                    Text(
                      data.niceDate,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 2, bottom: 2),
                child: Row(
                  children: <Widget>[Text("分类:"), Text(data.superChapterName)],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _onRefesh() {}

  void loadMoreData() async {
    getData(false);
  }

  Future<void> _onRefresh() async {
    getData(true);
  }
}
