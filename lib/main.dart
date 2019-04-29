import 'package:flutter/material.dart';
import 'package:hundred_cuisine/home/home_page.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
//  debugPaintSizeEnabled = true;
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.white),
      home: HomePage(),
    );
  }
}
