import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_provider/providers/todos.dart';
import 'package:todo_provider/screens/todo_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Todos(),
      child: MaterialApp(
        title: 'Todo Provider',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const TodoScreen(),
      ),
    );
  }
}
