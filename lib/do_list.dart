import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/task_component.dart';
import 'package:flutter_application_1/models/Task.dart';
import 'package:flutter_application_1/models/data.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ToDoState();
  }
  
}




class _ToDoState extends State<ToDoList> {

  void switchEnabled(Task task){
    setState(() {
      task.isEnabled = !task.isEnabled;      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...tasks.map((task) => TaskComponent(task ,switchEnabled))
      ],
    );
  }

}