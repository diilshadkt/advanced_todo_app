import 'package:flutter/material.dart';
import 'package:todo_with_clean_architecture/features/todo_app/presentation/widgets/profile_part_widget.dart';
import 'package:todo_with_clean_architecture/features/todo_app/presentation/widgets/todo_items_container_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          ProfilePartWidget(),

          /// Good morning text
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, top: 25),
                child: Text(
                  "Good morning!",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Colors.white),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 130,
          ),

          /// Todo items list container
          TodoItemsContainerWidget(),
        ],
      ),
    );
  }
}
