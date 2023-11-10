import 'package:flutter/material.dart';
class Second extends StatefulWidget {
  String name;
  String fname;
  Second({ required this.name,required this.fname});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return mystate();
  }
}
  class mystate extends State<Second>
  {
  @override
  Widget build(BuildContext context) {
    String s1=widget.fname;
    String s2=this.widget.name;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar( title: Text("sss"),),
      body:  Text(" Hi $s1 $s2"),

    );
  }
  }
