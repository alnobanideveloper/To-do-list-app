import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/Task.dart';

class TaskComponent extends StatefulWidget {
  const TaskComponent(this.task, {super.key});
  final Task task;

  @override
  State<TaskComponent> createState() => _TaskComponentState();
}

class _TaskComponentState extends State<TaskComponent> {
  void switchChecked() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(vertical: 10 , horizontal: 2),
      color: Colors.purple,
      child: Row(
        children: [
          IconButton(
            onPressed: switchChecked,
            icon: Icon(
              widget.task.isEnabled == true
                  ? Icons.check_box
                  : Icons.check_box_outline_blank,
            ),
          ),
          SizedBox(width: 16,),
          Text(widget.task.task)
        ],

      ),
    );
  }
}
