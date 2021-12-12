import 'package:flutter/material.dart';
import 'package:online_shop_app/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
        home: HomeScreen());
  }
}
