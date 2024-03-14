import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:todo_with_clean_architecture/features/todo_app/data/model/todo_model.dart';
import 'package:todo_with_clean_architecture/objectbox.g.dart';

class ObjectBox {
  static ObjectBox? _instance;

  late final Store store;
  late final Box<TodoModel> todoBox;



  ObjectBox._create(this.store) {
    todoBox = store.box<TodoModel>();
  }
  static ObjectBox get instance{
    return instance;
  }
  static Future<void> Create() async {
    if (_instance == null) {
      final docsDir = await getApplicationDocumentsDirectory();
      final store = await openStore(directory: join(docsDir.path, "todo"));
      _instance = ObjectBox._create(store);
    }
  }
}
