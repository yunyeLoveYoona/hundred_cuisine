import 'package:flutter/material.dart';
import 'package:hundred_cuisine/home/model/cooling_type_model.dart';
import 'package:hundred_cuisine/home/type/cooling_type.dart';

///分类页面state
class CoolingTypeState extends State<CoolingType> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: const EdgeInsets.only(top: 50.0),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "菜谱分类",
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              //垂直子Widget之间间距
              mainAxisSpacing: 30.0,
              //GridView内边距
              padding: EdgeInsets.all(10.0),
              children: CoolingTypeModel.getTypes()
                  .map((coolingTypeModel) => _buildItem(coolingTypeModel))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildItem(CoolingTypeModel coolingTypeModel) {
    return Stack(
      alignment: Alignment(0, 0.7),
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(coolingTypeModel.iconUrl))),
        ),
        Container(
          child: Text(
            coolingTypeModel.name,
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w800),
          ),
        )
      ],
    );
  }
}
