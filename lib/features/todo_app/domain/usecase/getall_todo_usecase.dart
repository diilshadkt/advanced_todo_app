import 'dart:developer';

import 'package:todo_with_clean_architecture/features/todo_app/domain/repository/todo_repository.dart';

class GetallTodoUsecase{
  final TodoRepository repository;
  GetallTodoUsecase({
    required this.repository
  });

  Future<void> call() async{
    try{
      repository.getTodo();

    }catch(e){
      log(e.toString());
    }
  }
}