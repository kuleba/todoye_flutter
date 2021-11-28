import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({Key? key, this.addNewTask}) : super(key: key);
  Function()? addNewTask;
  String newTask='';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 40),
        decoration: containerCornerDecor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, color: Colors.lightBlueAccent),
            ),
            TextField(
              autofocus: true,
                textAlign: TextAlign.center,
                decoration: addTaskFieldDecor,
                onChanged: (text) {
                  newTask = text;
                },
            ),
            TextButton(
              child: Text('Add'),
              style: TextButton.styleFrom(
                primary: Colors.white,
                  backgroundColor: Colors.lightBlueAccent,
                textStyle: TextStyle(
                  fontSize: 18,
                )

              ),
              onPressed: addNewTask,

            ),
          ],
        ),
      ),
    );
  }
}
