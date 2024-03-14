
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todo_with_clean_architecture/features/todo_app/data/datasource/todo_datasource.dart';
import 'package:todo_with_clean_architecture/features/todo_app/data/datasource/todo_datasource_impl.dart';
import 'package:todo_with_clean_architecture/features/todo_app/data/model/todo_model.dart';
import 'package:todo_with_clean_architecture/features/todo_app/domain/entity/todo_entity.dart';
import 'package:todo_with_clean_architecture/features/todo_app/domain/repository/todo_repository.dart';
part 'todo_repository_impl.g.dart';

class TodoRepositoryImpl implements TodoRepository {
  final TodoDatasource datasource;
  TodoRepositoryImpl({required this.datasource});

  @override
  Future<void> add(TodoEntity todo) async {
    final addTodo = TodoModel(title: todo.title, isChecked: todo.isChecked);
    await datasource.add(addTodo);
  }

  @override
  Future<void> delete(int id) async {
    await datasource.delete(id);
  }

  @override
  List<TodoModel> getTodo() {
    return datasource.getTodo();
  }

  @override
  Future<void> update(TodoEntity todo) async {
    await datasource
        .update(TodoModel(title: todo.title, isChecked: todo.isChecked));
    //  final editTodo = TodoModel(title: todo.title, isChecked: todo.isChecked);
    //  await datasource.update(editTodo);
  }
}

@riverpod
TodoRepository todoRepository(TodoRepositoryRef ref) {
  return TodoRepositoryImpl(datasource: ref.watch(todoDatasourceProvider));
}
