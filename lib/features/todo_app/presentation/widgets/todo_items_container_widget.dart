import 'package:flutter/material.dart';
import 'package:todo_with_clean_architecture/features/todo_app/presentation/widgets/todo_listview_widget.dart';

class TodoItemsContainerWidget extends StatelessWidget {
  const TodoItemsContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height / 3,
        decoration: BoxDecoration(
            color: Colors.white38, borderRadius: BorderRadius.circular(20)),
        child: TodoListviewWidget(),
      ),
    );
  }
}
