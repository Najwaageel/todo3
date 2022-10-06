import 'package:flutter/material.dart';
import 'package:todolist/add_task.dart';
import 'package:todolist/task_data.dart';
import 'package:todolist/tasks_list.dart';
import 'package:provider/provider.dart';


class TasksScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
  return Scaffold(
  floatingActionButtonLocation:
  FloatingActionButtonLocation.centerFloat,
  floatingActionButton: FloatingActionButton(
  onPressed: () {
  showModalBottomSheet(
  isScrollControlled: true,
  context: context,
  builder: (context) => SingleChildScrollView(
  child: Container(
  padding: EdgeInsets.only(
  bottom: MediaQuery.of(context).viewInsets.bottom
  ),
  child: AddTask((newTaskTitle){
    // setState(() {
    //   tasks.add(Task(name:newTaskTitle));
    //   Navigator.pop(context);
    // });

  })
  )
  ),
  );
  },

  backgroundColor: Colors.indigo[400],
  child: Icon(Icons.add),
  ),

  backgroundColor: Colors.teal[400],
  body: Container(
  padding: const EdgeInsets.only(
  top: 60,
  left: 20,
  right: 20,
  bottom: 80,
  ),
  child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
  Row(
  children: [
  Icon(Icons.playlist_add_check,
  size: 35,
  color: Colors.white,),
  SizedBox(width: 10,),
  Text(
  'To Day Do',
  style: TextStyle(
  color: Colors.white,
  fontSize: 35,
  fontWeight: FontWeight.bold,

  ),
  ),
  ],
  ),
    Text(
      '${Provider.of<TaskData>(context).tasks.length} Tasks',
  style: TextStyle(
  color: Colors.white,
  fontSize: 18,
  ),
  ),
  SizedBox(height: 15,),
  Expanded(
  child: Container(
  height: 300,
  decoration: BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.all(
  Radius.circular(40),
  ),
  ),
  child: TaskList(),
  ),
  )
  ],
  ),
  ),
  );
  }
  }

