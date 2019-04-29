import 'package:flutter/widgets.dart';
import 'package:hundred_cuisine/home/table_button.dart';
import 'package:hundred_cuisine/home/table_button_model.dart';

class ButtonTableBar extends StatefulWidget {
  List<TableButtonModel> _tableButtonModels;

  ButtonTableBar(this._tableButtonModels);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TableBarState(_tableButtonModels);
  }
}

class TableBarState extends State<ButtonTableBar> {
  TableButton left, middle, right;
  List<TableButtonModel> _tableButtonModels;

  TableBarState(this._tableButtonModels);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    left = TableButton(_tableButtonModels[0]);

    middle = TableButton(_tableButtonModels[1]);
    right = TableButton(_tableButtonModels[2]);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[left, middle, right],
      ),
    );
  }
}
