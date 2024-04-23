import 'package:flutter/material.dart';
import '../todo_model.dart';

class TodoDetailsScreen extends StatelessWidget {
  final Todo todo;

  TodoDetailsScreen({required this.todo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ID: ${todo.id}'),
            Text('User ID: ${todo.userId}'),
            Text('Title: ${todo.title}'),
            Text('Completed: ${todo.completed}'),
          ],
        ),
      ),
    );
  }
}
