// import 'package:objectbox/objectbox.dart';
import 'package:todo_with_clean_architecture/core/object_box/object_box.dart';
import 'package:todo_with_clean_architecture/features/todo_app/data/datasource/todo_datasource.dart';
import 'package:todo_with_clean_architecture/features/todo_app/data/model/todo_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todo_datasource_impl.g.dart';

class TodoDatasourceImpl implements TodoDatasource {
  final box = ObjectBox.instance.todoBox;

  @override
  Future<void> add(TodoModel todo) async {
    box.put(todo);
  }

  @override
  Future<void> delete(int id) async {
    box.remove(id);
  }

  @override
  List<TodoModel> getTodo() {
    return box.getAll();
  }

  @override
  Future<void> update(TodoModel todo) async {
    box.put(todo);
  }
}

@riverpod
TodoDatasource todoDatasource(TodoDatasourceRef ref) {
  return TodoDatasourceImpl();
}
