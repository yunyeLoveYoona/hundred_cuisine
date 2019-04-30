import 'package:flutter/widgets.dart';
import 'package:hundred_cuisine/home/table_button_model.dart';


class TableButton extends StatefulWidget {
  final TableButtonModel _tableButtonModel;
  final ValueChanged<int> _onClick;
  final bool _isSelect;
  final int _position;

  TableButton(this._tableButtonModel,this._onClick,this._position,this._isSelect);

  @override
  createState() => new TableButtonState();
}

class TableButtonState extends State<TableButton> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.only(left: 20,top: 0,right: 20,bottom: 0),
      child: new GestureDetector(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Icon(
              widget._tableButtonModel.icon,
              color: widget._isSelect
                  ? widget._tableButtonModel.selectColor
                  : widget._tableButtonModel.normalColor,
            ),
            new Container(
              margin: const EdgeInsets.only(top: 8.0),
              child: new Text(
                widget._tableButtonModel.title,
                style: new TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: widget._isSelect
                      ? widget._tableButtonModel.selectColor
                      : widget._tableButtonModel.normalColor,),
              ),
            ),
          ],
        ),
        onTap:(){
          widget._onClick(widget._position);
        },
      ),
    );
  }

}
