import 'package:flutter/material.dart';

class First extends StatelessWidget {
  String name;

  First({required this.name});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ToDoList"),
      ),
      body: Center(
        child: Text(' $name First '),
      ),
    );
  }
}
