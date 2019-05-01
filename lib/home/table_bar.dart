import 'package:flutter/widgets.dart';
import 'package:hundred_cuisine/home/table_button.dart';
import 'package:hundred_cuisine/home/model/table_button_model.dart';

class ButtonTableBar extends StatefulWidget {
  final List<TableButtonModel> _tableButtonModels;
  final ValueChanged<int> _pageChange;
  ValueChanged<int> changePage;
  int _selectPosition = 1 ;
  ButtonTableBar(this._tableButtonModels,this._pageChange);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TableBarState(_tableButtonModels);
  }
}

class TableBarState extends State<ButtonTableBar> {
  final List<TableButtonModel> _tableButtonModels;


  TableBarState(this._tableButtonModels);


  void _onItemClick(int position){
    if(position!=widget._selectPosition){
      widget._pageChange(position);
      setState(() {
        widget._selectPosition = position;
      });
    }
  }

  void _changeSelectItem(int position){
    if(position!=widget._selectPosition){
      setState(() {
        widget._selectPosition = position;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    widget.changePage = _changeSelectItem;
    return new Container(
      alignment: Alignment.bottomCenter,
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          TableButton(_tableButtonModels[0], _onItemClick,0,widget._selectPosition==0),
        TableButton(_tableButtonModels[1],_onItemClick,1,widget._selectPosition==1),
        TableButton(_tableButtonModels[2],_onItemClick,2,widget._selectPosition==2)],
      ),
    );
  }
}
