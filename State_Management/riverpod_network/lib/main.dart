import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'todos_list.dart';
import 'todos_provider.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Todos'),
        ),
        body: ref.watch(todosProvider.notifier).todos.isEmpty
            ? const Center(
                child: Text(
                  "Click Reload to fetch todos...",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              )
            : const TodosList(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ref.read(todosProvider.notifier).fetchTodos();
          },
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}
