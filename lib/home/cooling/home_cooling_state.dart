import 'package:flutter/material.dart';
import 'package:hundred_cuisine/home/cooling/home_cooling.dart';
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
            margin: EdgeInsets.only(top: 30),
            constraints: BoxConstraints(
              maxWidth: 240,
              maxHeight: 40,
            ),
            child: TextField(
                textAlign: TextAlign.center,
                maxLines: 1,
                decoration: InputDecoration(
                    fillColor: LocalColor.grey_f3f3f3,
                    filled: true,
                    hintText: "今天想吃什么",
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black87,
                    ),
                    contentPadding: EdgeInsets.all(10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: LocalColor.grey_f3f3f3,width: 0)
                    ))),
          ),
        ],
      ),
    );
  }
}
