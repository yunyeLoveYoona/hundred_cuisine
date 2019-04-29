import 'package:flutter/widgets.dart';
import 'package:hundred_cuisine/home/table_button_model.dart';

class TableButton extends StatefulWidget {
  final TableButtonModel _tableButtonModel;
  final selectItem = 0;
  TableButton(this._tableButtonModel);


  @override
  createState() => new TableButtonState(_tableButtonModel);

}

class TableButtonState extends State<TableButton>{
  bool _select = false;
  final TableButtonModel _tableButtonModel;


  TableButtonState(this._tableButtonModel);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: new GestureDetector(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Icon(
              _tableButtonModel.icon,
              color: _select
                  ? _tableButtonModel.selectColor
                  : _tableButtonModel.normalColor,
            ),
            new Container(
              margin: const EdgeInsets.only(top: 8.0),
              child: new Text(
                _tableButtonModel.title,
                style: new TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: _select
                      ? _tableButtonModel.selectColor
                      : _tableButtonModel.normalColor,),
              ),
            ),
          ],
        ),
        onTap: () {
          setState(() {
            _select =!_select;
          });

        },
      ),
    );
  }

}
