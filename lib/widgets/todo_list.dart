import 'package:flutter/material.dart';
import 'package:todo_provider/models/todo.dart';
import 'package:todo_provider/widgets/todo_list_item.dart';

class TodoList extends StatelessWidget {
  final List<Todo> todos;

  const TodoList({ Key? key, required this.todos }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: getTodoListItem(),
    );
  }

  List<Widget> getTodoListItem() {
    return todos.map((item) => TodoListItem(todo: item)).toList();
  }
}