import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/task_component.dart';
import 'package:flutter_application_1/models/data.dart';

class ToDoList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ToDoState();
  }
  
}

class _ToDoState extends State<ToDoList> {
  List<String> lst = ['kfjdk'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...tasks.map((task) => TaskComponent(task))
      ],
    );
  }

}