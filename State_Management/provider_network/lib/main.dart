import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'todos_list.dart';
import 'todos_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TodosProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Todos'),
        ),
        body: Consumer<TodosProvider>(
          builder: (context, todoModel, child) {
            if (todoModel.todos.isEmpty) {
              return const Center(
                child: Text(
                  "Click Reload to fetch todos...",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              );
            } else {
              return const TodosList();
            }
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Provider.of<TodosProvider>(context, listen: false).fetchTodos();
          },
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}
