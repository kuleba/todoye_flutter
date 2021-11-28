import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({Key? key, required this.taskText, required this.isChecked, required this.toggleCheckbox}) : super(key: key);
  Function (bool?) toggleCheckbox;
  final String taskText;
  bool isChecked;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskText,
        style: TextStyle(fontSize: 18, decoration: isChecked ? TextDecoration.lineThrough:null),
      ),
      trailing: Checkbox (
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: toggleCheckbox,

      ),
    );

  }
}

// (bool? value){
// setState(() {
// isChecked = value!;
// });

