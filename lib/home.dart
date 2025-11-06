import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/buttom_bar.dart';
import 'package:flutter_application_1/models/do_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Simple Todo"),),
      body: Column(
        children: [
          Expanded(child: ToDoList()),
          ButtomBar()
        ],
      ),
    );
  }
}