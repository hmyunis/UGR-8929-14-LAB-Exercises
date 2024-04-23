import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

import 'todo.dart';

class TodosNotifier extends StateNotifier<List<Todo>> {
  TodosNotifier() : super([]);

  List<Todo> _todos = [];

  List<Todo> get todos => _todos;

  Future<void> fetchTodos() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      _todos = data.map((e) => Todo.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load todos');
    }
  }

  void toggleTodo(int index) {
    List temp = [..._todos];
    temp[index].completed = !temp[index].completed;
    _todos = [...temp];
  }

  void addTodo(Todo todo) {
    List temp = [..._todos];
    temp.add(todo);
    _todos = [...temp];
  }

  void removeTodo(int index) {
    List temp = [..._todos];
    temp.removeAt(index);
    _todos = [...temp];
  }
}

final todosProvider =
    StateNotifierProvider<TodosNotifier, List<Todo>>((ref) => TodosNotifier());
