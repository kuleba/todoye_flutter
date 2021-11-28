import 'package:flutter/material.dart';
import 'package:todoye_flutter/models/task.dart';
import 'package:todoye_flutter/widges/task_tile.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    Key? key,
  }) : super(key: key);

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {


  List<Task> tasks = [
    Task(name: 'Buy mikk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
    Task(name: 'Buy fruits')
      ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){
      return TaskTile(
        taskText: tasks[index].name,
        isChecked: tasks[index].isDone,
        toggleCheckbox: (bool? value) {
          setState(() {
            tasks[index].toggleDone();
          });
      }, );
    },
      itemCount: tasks.length,
    );
  }
}