import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToDoItem extends StatelessWidget {
  String taskname;
  bool taskComplete;
  Function(bool?)? onChanged;

  ToDoItem(
      {required this.taskname,
      required this.taskComplete,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(20),
      child: Container(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Row(
            children: [
              Checkbox(value: taskComplete, onChanged: onChanged),
              Text(taskname),
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
      ),
    );
  }
}
