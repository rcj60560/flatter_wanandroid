import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/page/widget/layout_widget_row.dart';
import 'package:flutter_app/page/widget/layout_widget_stack.dart';

class WidgetPage extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final List datas = List.from(["Row and Column", "Stack"]);

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
