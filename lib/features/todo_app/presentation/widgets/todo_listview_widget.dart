import 'package:flutter/material.dart';

class TodoListviewWidget extends StatelessWidget {
  const TodoListviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
    
      itemCount: 3,
      itemBuilder: (context, index) {
        return Row(
          children: [
            const Icon(Icons.keyboard_arrow_right),
            const Text(
              "sleep at 9 pm",
              style: TextStyle(color: Colors.red),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
            IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
          ],
        );
       
      },
    );
  }
}
