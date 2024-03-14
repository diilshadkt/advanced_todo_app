import 'package:todo_with_clean_architecture/features/todo_app/data/model/todo_model.dart';

abstract class TodoDatasource{
  Future<void> add(TodoModel todo);
  Future<void> delete(int id);
  Future<void> update(TodoModel todo);
  List<TodoModel> getTodo(); 
}