import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoye_flutter/models/task.dart';
import 'package:todoye_flutter/models/tasks.dart';
import 'package:todoye_flutter/widges/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Tasks>(
      builder: (BuildContext context, tasksData, Widget? child) =>
          ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            taskText: tasksData.tasks[index].name,
            isChecked: tasksData.tasks[index].isDone,
            toggleCheckbox: (checkboxState) {
              tasksData.updateTask(tasksData.tasks[index]);
            },
            deleteItem: () {
              tasksData.deleteTask(index);
            },
          );
        },
        itemCount: tasksData.taskCount,
      ),
    );
  }
}
