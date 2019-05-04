import 'package:flutter/material.dart';
import 'package:hundred_cuisine/home/cooling/cooling_item_builder.dart';
import 'package:hundred_cuisine/home/cooling/home_cooling.dart';
import 'package:hundred_cuisine/home/model/cooling_model.dart';
import 'package:hundred_cuisine/home/resource/local_color.dart';

///家常菜页面state
class HomeCoolingState extends State<HomeCooling> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      padding: const EdgeInsets.only(top: 150.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image(
            height: 30,
            width: 90,
            image: new AssetImage('graphics/share_course_logo.png'),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, bottom: 20),
            constraints: BoxConstraints(
              maxWidth: 240,
              maxHeight: 40,
            ),
            child: TextField(
                textAlign: TextAlign.center,
                maxLines: 1,
                decoration: InputDecoration(
                    fillColor: LocalColor.color_f3f3f3,
                    filled: true,
                    hintText: "今天想吃什么",
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black87,
                    ),
                    contentPadding: EdgeInsets.all(10.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                            color: LocalColor.color_f3f3f3, width: 0)))),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Text("做饭是件快乐的事",
              style: TextStyle(color: LocalColor.color_cdcdcd),),
          ),
          Expanded(
            child: GridView.count(
              //水平子Widget之间间距
              crossAxisSpacing: 10.0,
              //垂直子Widget之间间距
              mainAxisSpacing: 30.0,
              childAspectRatio: 1,
              //GridView内边距
              padding: EdgeInsets.all(10.0),
              //一行的Widget数量
              crossAxisCount: 2,
              //子Widget列表
              children: CoolingModel.getModels()
                  .map((item) => CoolingItemBuilder.build(item))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
