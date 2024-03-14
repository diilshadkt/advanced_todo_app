import 'dart:developer';

import 'package:todo_with_clean_architecture/features/todo_app/domain/repository/todo_repository.dart';

class DeleteTodoUsecase {
  final TodoRepository repository;
  DeleteTodoUsecase({required this.repository});
  Future<void> call({required int id}) async {
    try {
      repository.delete(id);
    } catch (e) {
      log(e.toString());
    }
  }
}
