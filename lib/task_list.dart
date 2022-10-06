import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final bool isChecked;
  final String taskTitle;
  final void Function(bool?) checkboxChange;
  final void Function() listTitleDelete;


  TaskTile(
      { required this.isChecked,
        required this.taskTitle,
        required this.checkboxChange,
        required this.listTitleDelete
      });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
      taskTitle,
      style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null) ,
      ),
      trailing:  Checkbox(
        activeColor: Colors.teal[400],
        value: isChecked,
        onChanged: checkboxChange ,
      ),
      onLongPress: listTitleDelete,
    );
  }
}






