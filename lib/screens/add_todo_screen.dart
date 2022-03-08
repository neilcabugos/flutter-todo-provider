import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_provider/models/todo.dart';
import 'package:todo_provider/providers/todos.dart';

class AddTodoScreen extends StatefulWidget {

  const AddTodoScreen({Key? key}) : super(key: key);

  @override
  State<AddTodoScreen> createState() => _AddTodoScreenState();
}

class _AddTodoScreenState extends State<AddTodoScreen> {
  final TextEditingController field = TextEditingController();

  void onAdd() {
    if (field.text.isNotEmpty) {
      final Todo todo = Todo(title: field.text);
      Provider.of<Todos>(context, listen: false).addTodo(todo);
      Navigator.pop(context);
    }
  }

  @override
  void dispose() {
    field.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Todo'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Column(
            children: [
              TextField(
                controller: field,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => onAdd(), 
                child: const Text('Submit')
              )
            ],
          ),
        )
      ),
    );
  }
}