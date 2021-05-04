import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/page/widget/juejin_me.dart';
import 'package:flutter_app/page/widget/juejin_mine.dart';
import 'package:flutter_app/page/widget/layout_widget_row.dart';
import 'package:flutter_app/page/widget/layout_widget_stack.dart';
import 'package:flutter_app/page/widget/layout_widget_wrap.dart';

class WidgetPage extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final List datas = List.from(["Row and Column", "Stack", "流式布局", "掘金 我的页面","掘金 个人信息头部"]);

  //test github.login

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("widget 测试"),
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return _item(context, index);
          },
          itemCount: datas.length,
        ),
      ),
    );
  }

  Widget _item(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        switch (index) {
          case 0:
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => LayoutWidgetRow()));
            break;
          case 1:
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => LayoutWidgetStack()));
            break;

          case 2:
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => LayoutWidgetWrap()));
            break;

          case 3:
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return JueJinMe();
            }));
            break;

          case 4:
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return JuejinMine();
            }));
            break;
        }
      },
      child: Card(
        margin: EdgeInsets.all(10),
        child: ListTile(
          title: Text(datas[index]),
        ),
      ),
    );
  }
}
