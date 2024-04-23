import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'todos_provider.dart';
import 'todo_item.dart';

class TodosList extends ConsumerWidget {
  const TodosList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return TodoItem(
          todo: ref.watch(todosProvider.notifier).todos[index],
        );
      },
      padding: const EdgeInsets.all(16.0),
      physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      separatorBuilder: ((context, index) => const SizedBox(
            height: 5,
          )),
      itemCount: ref.watch(todosProvider.notifier).todos.length,
    );
  }
}
