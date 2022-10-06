import 'package:flutter/material.dart';
import 'package:todolist/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'go shopping 1'),
    Task(name: 'go shopping 2'),
    Task(name: 'go shopping 3'),
  ];

  void addTask(String newTaskTitle) {
    tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  void updateTask(Task task){
    task.doneChange();
    notifyListeners();
  }
  void deleteTask(Task task){
    tasks.remove(task);
    notifyListeners();
  }
}