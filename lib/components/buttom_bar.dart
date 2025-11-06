import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/Task.dart';

class ButtomBar extends StatefulWidget {
  ButtomBar(this.addTask , {super.key});

   void Function(Task) addTask;

  @override
  State<ButtomBar> createState() => _ButtomBarState();
}

class _ButtomBarState extends State<ButtomBar> {
  
  TextEditingController textController = TextEditingController() ;

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
      if(textController == null || textController!.text.isEmpty){
        return;
      }



    widget.addTask(Task(textController!.text, false));
    textController.clear();
    
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: TextField(
          controller: textController,
        )),
        SizedBox(width: 32),
        IconButton(onPressed: submitTask, icon: Icon(Icons.add)),
      ],
    );
  }
}
