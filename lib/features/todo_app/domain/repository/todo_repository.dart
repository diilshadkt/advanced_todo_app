import 'package:todo_with_clean_architecture/features/todo_app/data/model/todo_model.dart';
import 'package:todo_with_clean_architecture/features/todo_app/domain/entity/todo_entity.dart';

abstract class TodoRepository{
  Future<void> add(TodoEntity todo);
  Future<void> delete(int id);
  Future<void> update(TodoEntity todo);
  List<TodoModel> getTodo();
}