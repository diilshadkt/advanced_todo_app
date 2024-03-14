import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todo_with_clean_architecture/features/todo_app/data/model/todo_model.dart';
import 'package:todo_with_clean_architecture/features/todo_app/data/repository/todo_repository_impl.dart';
import 'package:todo_with_clean_architecture/features/todo_app/domain/repository/todo_repository.dart';
import 'package:todo_with_clean_architecture/features/todo_app/domain/usecase/add_todo_usecase.dart';
import 'package:todo_with_clean_architecture/features/todo_app/domain/usecase/delete_todo_usecase.dart';
part 'todo_provider.g.dart';

@riverpod
class Todo extends _$Todo {
  late final TextEditingController todoController;
  late TodoRepository repository;
  @override
  List<TodoModel> build() {
    todoController = TextEditingController();
    repository = ref.watch(todoRepositoryProvider);
    return repository.getTodo();
  }

  Future<String?> addTodo() async {
    try {
      final tit = todoController.text;
      await AddTodoUsecase(repository: repository);
      // (title:tit,Checked: false);
      state = repository.getTodo();
    } catch (e) {
      log(e.toString());
    }
    return null;
  }

  Future<String?> deleteTodo(int id) async {
    try {
      await DeleteTodoUsecase(repository: repository)(id: id);
      state = repository.getTodo();
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
