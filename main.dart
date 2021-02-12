import 'package:flutter/material.dart';
import 'display_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  final String appTitle = 'Websites' ;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

        debugShowCheckedModeBanner: false,
        title: appTitle,
        home: Scaffold(
          appBar:  AppBar( title: Text(appTitle)  ),


          body: MyListDisplay(),
        )  // Scaffold
    );      // MaterialApp
  }
}  // end of MyApp