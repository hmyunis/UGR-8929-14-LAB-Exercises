import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'todos_provider.dart';
import 'todo_item.dart';

class TodosList extends StatelessWidget {
  const TodosList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return TodoItem(
          todo: Provider.of<TodosProvider>(context).todos[index],
        );
      },
      padding: const EdgeInsets.all(16.0),
      physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      separatorBuilder: ((context, index) => const SizedBox(
            height: 5,
          )),
      itemCount: Provider.of<TodosProvider>(context).todos.length,
    );
  }
}
