import 'package:objectbox/objectbox.dart';

@Entity()
class TodoModel {
  @Id()
  int id = 0;
  String? title;
  bool? isChecked;

  TodoModel({this.id = 0, required this.title, required this.isChecked});
}
