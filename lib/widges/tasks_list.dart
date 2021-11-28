import 'package:flutter/material.dart';
import 'package:todoye_flutter/models/task.dart';
import 'package:todoye_flutter/widges/task_tile.dart';

class TasksList extends StatefulWidget {
  TasksList({Key? key, required this.tasks}) : super(key: key);
  List<Task> tasks;

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {



  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){
      return TaskTile(
        taskText: widget.tasks[index].name,
        isChecked: widget.tasks[index].isDone,
        toggleCheckbox: (bool? value) {
          setState(() {
            widget.tasks[index].toggleDone();
          });
      }, );
    },
      itemCount: widget.tasks.length,
    );
  }
}