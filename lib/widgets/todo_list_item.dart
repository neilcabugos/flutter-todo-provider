import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_provider/models/todo.dart';
import 'package:todo_provider/providers/todos.dart';

class TodoListItem extends StatelessWidget {
  final Todo todo;

  const TodoListItem({ Key? key, required this.todo }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(todo.title),
      trailing: IconButton(
        icon: const Icon(
          Icons.delete,
          color: Colors.grey
        ),
        onPressed: () {
          Provider.of<Todos>(context, listen: false).deleteTodo(todo);
        },
      ),
    );
  }
}