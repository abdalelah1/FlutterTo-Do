import 'package:flutter/material.dart';
import '../widget/todo_Item.dart';
import 'Second.dart';
import 'first.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyState();
  }
}

class MyState extends State {
  TextEditingController controller = TextEditingController();

  List Tasks = [
    ["first task", true],
    ["secondTask", false]
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("TO Do Task"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: addNewtask,
      ),
      body: ListView.builder(
        itemCount: Tasks.length,
        itemBuilder: ((context, index) {
          return ToDoItem(
            taskname: Tasks[index][0],
            taskComplete: Tasks[index][1],
            onChanged: (p0) => onChanged(p0, index),
          );
        }),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              //flutter.compileSdkVersion
              accountName: Text("AAA"),
              accountEmail: Text("BBBB"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  "A",
                  style: TextStyle(
                    color: Colors.lightBlue,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.ac_unit),
              title: Text("HOME"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return First(name: "Hiiii");
                  },
                ));
              },
            ),
            ListTile(
              leading: Icon(Icons.abc),
              title: Text(" Details"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return Second(name: "Dev", fname: "Flutter");
                  },
                ));
              },
            )
          ],
        ),
      ),
    );
  }

  onChanged(p0, int index) {
    setState(() {
      Tasks[index][1] = !Tasks[index][1];
    });
  }

  void addNewtask() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.yellow.shade100,
            content: Container(
              height: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextField(
                    controller: controller,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MaterialButton(
                        color: Theme.of(context).primaryColor,
                        onPressed: savetask,
                        child: Text("Save"),
                      ),
                      MaterialButton(
                        color: Theme.of(context).primaryColor,
                        onPressed: () => Navigator.of(context).pop(),
                        child: Text("Cancel"),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }

  void savetask() {
    setState(() {
      Tasks.add([controller.text, false]);
      controller.clear();
    });
    Navigator.of(context).pop();
  }
}
