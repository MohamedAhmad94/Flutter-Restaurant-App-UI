import 'package:flutter/material.dart';
import 'package:flutter_restaurant_app/screens/main_screen.dart';
import 'package:flutter_restaurant_app/setup/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Restaurant',
      theme: Constants.lightTheme,
      darkTheme: Constants.darkTheme,
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
