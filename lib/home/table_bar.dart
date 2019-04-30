import 'package:flutter/widgets.dart';
import 'package:hundred_cuisine/home/table_button.dart';
import 'package:hundred_cuisine/home/table_button_model.dart';

class ButtonTableBar extends StatefulWidget {
  final List<TableButtonModel> _tableButtonModels;

  ButtonTableBar(this._tableButtonModels);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TableBarState(_tableButtonModels);
  }
}

class TableBarState extends State<ButtonTableBar> {
  final List<TableButtonModel> _tableButtonModels;
  int _selectPosition = 1 ;

  TableBarState(this._tableButtonModels);


  void _onItemClick(int position){
    setState(() {
      _selectPosition = position;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          TableButton(_tableButtonModels[0], _onItemClick,1,_selectPosition==1),
        TableButton(_tableButtonModels[1],_onItemClick,2,_selectPosition==2),
        TableButton(_tableButtonModels[2],_onItemClick,3,_selectPosition==3)],
      ),
    );
  }
}
