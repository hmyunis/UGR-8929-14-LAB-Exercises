import '../todo_model.dart';

abstract class TodoState {}

class TodoLoading extends TodoState {}

class TodoLoaded extends TodoState {
  final List<Todo> todos;
  TodoLoaded({required this.todos});
}

class TodoError extends TodoState {}
