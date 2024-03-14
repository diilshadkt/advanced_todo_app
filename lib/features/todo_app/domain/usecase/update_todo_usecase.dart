import 'dart:developer';

import 'package:todo_with_clean_architecture/features/todo_app/domain/entity/todo_entity.dart';
import 'package:todo_with_clean_architecture/features/todo_app/domain/repository/todo_repository.dart';

class UpdateTodoUsecase {
  final TodoRepository repository;
  UpdateTodoUsecase({required this.repository});

  Future<void> call(
      {required String title, required bool isChecked, required int id}) async {
    try {
      if (title.trim().isEmpty) {
        log("field is empty");
        final todo = TodoEntity(id: id, title: title, isChecked: isChecked);
        repository.update(todo);
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
