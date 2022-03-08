import 'package:flutter/material.dart';
import 'package:todo_provider/models/todo.dart';

class Todos extends ChangeNotifier {
  final List<Todo> todos = [
    Todo(title: 'Sample 1'),
    Todo(title: 'Sample 2'),
    Todo(title: 'Sample 3'),
  ];

  List<Todo> get allTodos => todos;

  void addTodo(Todo item) {
    todos.add(item);
    notifyListeners();
  }

  void toggleTodo(Todo item) {
    final taskIndex = todos.indexOf(item);
    todos[taskIndex].toggleStatus();
    notifyListeners();
  }

  void deleteTodo(Todo item) {
    todos.remove(item);
    notifyListeners();
  }
}