import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_provider/providers/todos.dart';
import 'package:todo_provider/screens/add_todo_screen.dart';
import 'package:todo_provider/widgets/todo_list.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context) => const AddTodoScreen()
              )
            ), 
            icon: const Icon(Icons.add)
          )
        ],
      ),
      body: Consumer<Todos>(
        builder: (context, todos, child) => TodoList(todos: todos.allTodos),
      ),
    );
  }
}