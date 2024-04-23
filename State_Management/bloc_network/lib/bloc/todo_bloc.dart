import 'package:flutter_bloc/flutter_bloc.dart';

import '../todo_repository.dart';
import 'todo_event.dart';
import 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final TodoRepository _repository;

  TodoBloc(this._repository) : super(TodoLoading()) {
    on<FetchTodos>((event, emit) async {
      emit(TodoLoading());
      try {
        final todos = await _repository.fetchTodos();
        emit(TodoLoaded(todos: todos));
      } catch (e) {
        emit(TodoError());
      }
    });
  }
}