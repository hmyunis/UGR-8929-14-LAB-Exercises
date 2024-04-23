import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/todo_bloc.dart';
import '../bloc/todo_event.dart';
import '../bloc/todo_state.dart';
import 'todo_details_screen.dart';

class TodoListScreen extends StatefulWidget {
  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  @override
  void initState() {
    super.initState();
    context.read<TodoBloc>().add(FetchTodos());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos'),
        backgroundColor: Colors.blue[200],
      ),
      body: BlocBuilder<TodoBloc, TodoState>(
        builder: (context, state) {
          if (state is TodoLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is TodoLoaded) {
            return ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(
                height: 5,
              ),
              itemCount: state.todos.length,
              itemBuilder: (context, index) {
                final todo = state.todos[index];
                return ListTile(
                  tileColor: Colors.blue[100],
                  title: Text(todo.title),
                  leading: CircleAvatar(
                    child: Text(todo.id.toString()),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TodoDetailsScreen(todo: todo),
                      ),
                    );
                  },
                );
              },
            );
          } else {
            return const Center(
                child:
                    Text('Error fetching Todos (Check internet connection)'));
          }
        },
      ),
    );
  }
}
