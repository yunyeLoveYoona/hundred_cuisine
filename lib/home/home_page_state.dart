import 'package:flutter/material.dart';
import 'package:hundred_cuisine/home/cooling/home_cooling.dart';
import 'package:hundred_cuisine/home/home_page.dart';
import 'package:hundred_cuisine/home/table_bar.dart';
import 'package:hundred_cuisine/home/table_button.dart';
import 'package:hundred_cuisine/home/table_button_model.dart';

///主页state
class HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  PageController _pageController;

  ///底部按钮内容
  final _tableButtonModels = <TableButtonModel>[];

  ///底部按钮集合
  ButtonTableBar _tableBar;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = new PageController(initialPage: 3);
    _tableButtonModels.add(
        TableButtonModel("家常", Icons.home, Colors.black45, Colors.redAccent));
    _tableButtonModels.add(
        TableButtonModel("分类", Icons.apps, Colors.black45, Colors.redAccent));
    _tableButtonModels.add(TableButtonModel(
        "收藏", Icons.favorite_border, Colors.black45, Colors.redAccent));
    _tableBar = ButtonTableBar(_tableButtonModels, _pageChange);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  void _pageChange(int position) {
    _pageController.jumpToPage(position);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: new Container(
        color: Colors.white,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (pagePosition) {
                  _tableBar.changePage(pagePosition);
                },
                children: <Widget>[HomeCooling(), HomeCooling(), HomeCooling()],
              ),
            ),
            _tableBar
          ],
        ),
      ),
    );
  }
}
