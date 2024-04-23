import 'dart:convert';

import 'package:http/http.dart' as http;
import 'todo_model.dart';

class TodoRepository {
  final _baseUrl = 'https://jsonplaceholder.typicode.com/todos';

  Future<List<Todo>> fetchTodos() async {
    final response = await http.get(Uri.parse(_baseUrl));
    if (response.statusCode == 200) {
      final List jsonList = jsonDecode(response.body);
      return jsonList.map((json) => Todo.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load Todos');
    }
  }
}