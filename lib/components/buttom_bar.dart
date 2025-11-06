import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/Task.dart';

class ButtomBar extends StatefulWidget {
  ButtomBar(this.addTask , {super.key});

   void Function(Task) addTask;

  @override
  State<ButtomBar> createState() => _ButtomBarState();
}

class _ButtomBarState extends State<ButtomBar> {
  var _taskTitle  = '';

  SnackBar get mySnackBar {
    return  SnackBar(
      content: Text('task cant be empty'),
      action: SnackBarAction(
        label: 'Dismiss',
        onPressed: () {
          
        },
      )
    );
  }

  void submitTask() {
      if(_taskTitle.isEmpty){
        ScaffoldMessenger.of(context).showSnackBar(mySnackBar);
        return;
      }

    widget.addTask(Task(_taskTitle, false));
    
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: TextField(
          onChanged: (value) => {_taskTitle = value},
        )),
        SizedBox(width: 32),
        IconButton(onPressed: submitTask, icon: Icon(Icons.add)),
      ],
    );
  }
}
