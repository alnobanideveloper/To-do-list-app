import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/buttom_bar.dart';
import 'package:flutter_application_1/models/Task.dart';
import 'package:flutter_application_1/models/data.dart';
import 'package:flutter_application_1/do_list.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void addTask(Task task){
    setState(() {
      tasks.add(task);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Simple Todo"),),
      body: Column(
        children: [
          Expanded(child: ToDoList()),
          ButtomBar(addTask )
        ],
      ),
    );
  }
}