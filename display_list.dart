import 'package:flutter/material.dart';
import 'data_file.dart';

class MyListDisplay extends StatelessWidget{

  final GridView    myGrid = GridView.count(

    crossAxisCount: 2,
    children: myRaisedButtonList,
  );

  @override
  Widget build(BuildContext context) {
    return myGrid;
  }
}  // end of MyListDisplay