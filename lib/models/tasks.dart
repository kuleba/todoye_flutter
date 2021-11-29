import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todoye_flutter/models/task.dart';

class Tasks extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy mikk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Abracadabra')
  ];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  void addTask(String taskName) {
    _tasks.add(Task(name: taskName));
    notifyListeners();
  }

  int get taskCount => _tasks.length;

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}
