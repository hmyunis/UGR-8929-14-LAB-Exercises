import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'todo.dart';
import 'todo_details_page.dart';
import 'todos_provider.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({super.key, required this.todo});
  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.grey[200],
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => TodoDetailsPage(todo: todo)));
      },
      title: Text(
        todo.title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w300,
        ),
      ),
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blueGrey[800],
        ),
        alignment: Alignment.center,
        child: Text(
          todo.id.toString(),
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w800,
            color: Colors.amber,
          ),
        ),
      ),
      trailing: Checkbox(
          value: todo.completed,
          onChanged: (value) {
            Provider.of<TodosProvider>(context, listen: false)
                .toggleTodo(todo.id - 1);
          }),
    );
  }
}
