import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'todo.dart';

class TodosProvider extends ChangeNotifier {
  List<Todo> _todos = [];

  List<Todo> get todos => _todos;

  Future<void> fetchTodos() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      _todos = data.map((e) => Todo.fromJson(e)).toList();
      notifyListeners();
    } else {
      throw Exception('Failed to load todos');
    }
  }

  void toggleTodo(int index) {
    _todos[index].completed = !_todos[index].completed;
    notifyListeners();
  }

  void addTodo(Todo todo) {
    _todos.add(todo);
    notifyListeners();
  }

  void removeTodo(int index) {
    _todos.removeAt(index);
    notifyListeners();
  }
}
