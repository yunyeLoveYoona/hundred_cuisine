import 'package:flutter/material.dart';
import 'package:hundred_cuisine/home/home_page.dart';
import 'package:hundred_cuisine/home/table_bar.dart';
import 'package:hundred_cuisine/home/table_button.dart';
import 'package:hundred_cuisine/home/table_button_model.dart';

class HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  //底部按钮内容
  final _tableButtonModels = <TableButtonModel>[];

  //底部按钮集合
  Widget _tableButton;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(vsync: this, length: 3);
    _tableButtonModels.add(
        TableButtonModel("家常", Icons.home, Colors.black45, Colors.redAccent));
    _tableButtonModels.add(
        TableButtonModel("分类", Icons.apps, Colors.black45, Colors.redAccent));
    _tableButtonModels.add(TableButtonModel(
        "收藏", Icons.favorite_border, Colors.black45, Colors.redAccent));
    _tableButton = ButtonTableBar(_tableButtonModels);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: new Container(
        color: Colors.white,
        padding: EdgeInsets.all(10),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[_tableButton],
        ),
      ),
    );
  }
}
