import 'package:flutter/material.dart';
import 'todo.dart';

class TodoDetailsPage extends StatelessWidget {
  const TodoDetailsPage({super.key, required this.todo});
  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Text('${todo.id} \n${todo.title} \n${todo.completed}'),
        ),
      ),
    );
  }
}
