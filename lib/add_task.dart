import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/task_data.dart';


class AddTask extends StatelessWidget {
  final Function addTaskCallback;

  AddTask(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Text(' Add Task ',
          style: TextStyle(
            fontSize: 30,
            color: Colors.indigo[400],
            fontWeight: FontWeight.bold,
          )),

          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText){
              newTaskTitle = newText;
            },
          ),
          SizedBox(height: 20,),
          TextButton(
            onPressed: (){
              Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle!);
              Navigator.pop(context);
            },
            child: Text('Add'),
            style: TextButton.styleFrom(
              backgroundColor: Colors.teal[400],
              primary: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
