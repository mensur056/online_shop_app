import 'package:flutter/material.dart';
import 'package:online_shop_app/constants.dart';
import 'package:online_shop_app/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Flutter de",
        theme: ThemeData(
            visualDensity: VisualDensity.adaptivePlatformDensity,
            textTheme:
                Theme.of(context).textTheme.apply(bodyColor: kTextColor)),
        home: HomeScreen());
  }
}
