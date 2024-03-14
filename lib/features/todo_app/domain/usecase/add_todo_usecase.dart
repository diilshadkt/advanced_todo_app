import 'dart:developer';

import 'package:todo_with_clean_architecture/features/todo_app/domain/entity/todo_entity.dart';
import 'package:todo_with_clean_architecture/features/todo_app/domain/repository/todo_repository.dart';

class AddTodoUsecase {
  final TodoRepository repository;
  AddTodoUsecase({required this.repository});
  Future<void> Call({required String title, required bool isChecked}) async {
    try {
      if (title.trim().isEmpty) {
        log('field is empty');
      }
      final todo = TodoEntity(id: 0, title: title, isChecked: isChecked);
      repository.add(todo);
    } catch (e) {
      log(e.toString());
    }
  }
}
