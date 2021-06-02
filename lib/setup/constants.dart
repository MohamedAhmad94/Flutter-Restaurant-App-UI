import 'package:flutter/material.dart';

class Constants {
  // Theme Colors
  static Color lightPrimary = Color(0xfffcfcff);
  static Color darkPrimary = Colors.black;
  static Color lightAccent = Color(0xff5563ff);
  static Color darkAccent = Color(0xff5563ff);
  static Color lightBG = Color(0xfffcfcff);
  static Color darkBG = Colors.black;
  static Color? ratinBG = Colors.yellow[600];

  // Light Theme
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: lightBG,
    backgroundColor: lightBG,
    primaryColor: lightPrimary,
    accentColor: lightAccent,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      elevation: 0.0,
      textTheme: TextTheme(
        headline6: TextStyle(
          color: darkBG,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    brightness: Brightness.light,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: darkBG,
    backgroundColor: darkBG,
    primaryColor: darkPrimary,
    accentColor: darkAccent,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      elevation: 0.0,
      textTheme: TextTheme(
        headline6: TextStyle(
          color: lightBG,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    brightness: Brightness.light,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static List<Map<String, dynamic>> categories = [
    {
      "name": "Syrian",
      "color1": Color.fromARGB(100, 0, 0, 0),
      "color2": Color.fromARGB(100, 0, 0, 0),
      "image": "assets/images/category1.png"
    },
    {
      "name": "Egyptian",
      "color1": Color.fromARGB(100, 0, 0, 0),
      "color2": Color.fromARGB(100, 0, 0, 0),
      "image": "assets/images/category2.png"
    },
    {
      "name": "Pastry",
      "color1": Color.fromARGB(100, 0, 0, 0),
      "color2": Color.fromARGB(100, 0, 0, 0),
      "image": "assets/images/category3.png"
    },
  ];

  static List<Map<String, String>> restaurants = [
    {
      "title": "Abo Mazen El Soury",
      "image": "assets/images/restaurant1.png",
      "address": "Nasr Street - New Maadi",
      "rating": "4.7"
    },
    {
      "title": "ElDahan",
      "image": "assets/images/restaurant2.png",
      "address": "Silver Star Mall - Fifth Settlement",
      "rating": "4.5"
    },
    {
      "title": "El Abd",
      "image": "assets/images/restaurant3.png",
      "address": "El Nasr Street - New Maadi",
      "rating": "4.8"
    },
    {
      "title": "Abou Anas El Soury",
      "image": "assets/images/restaurant4.png",
      "address": "Mostafa al-Nahas Street - Nasr City",
      "rating": "4.4"
    },
    {
      "title": "El Haty",
      "image": "assets/images/restaurant5.png",
      "address": "Road 11, Off Road 9 - Uptown Cairo",
      "rating": "4.3"
    },
  ];
}
