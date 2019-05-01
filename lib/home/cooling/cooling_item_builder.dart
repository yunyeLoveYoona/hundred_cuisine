import 'package:flutter/material.dart';
import 'package:hundred_cuisine/home/model/cooling_model.dart';
import 'package:hundred_cuisine/home/resource/local_color.dart';

class CoolingItemBuilder {
  static Widget build(CoolingModel model) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Image.network(model.imgUrl),
        Text(
          model.name,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        Text(
          "${model.grade}分  ${model.doPeopleNum}做过",
          style: TextStyle(fontSize: 12, color: LocalColor.color_dbdbd9),
        ),
      ],
    );
  }
}
