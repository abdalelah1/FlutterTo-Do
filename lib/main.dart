import 'package:app/pages/my_home_page.dart';
import 'package:flutter/material.dart';
void main()  {
  runApp(MaterialApp(
    title: "To Do",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.yellow,
    ),
    home: MyHomePage(),
  ));
}
