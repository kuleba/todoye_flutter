import 'package:flutter/material.dart';
import 'package:todoye_flutter/screens/tasks_screen.dart';
import 'package:provider/provider.dart';

import 'models/task.dart';
import 'models/tasks.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Tasks(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
