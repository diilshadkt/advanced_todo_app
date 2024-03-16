import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_with_clean_architecture/core/constants/homepage_constants.dart';

class TodoItemsContainerWidget extends ConsumerWidget {
  const TodoItemsContainerWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final txtConstants = ref.watch(homePageConstantsProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height / 3,
          decoration: BoxDecoration(
              color: Colors.white38, borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Row(
                children: [
                  Text(txtConstants.txtDailyTasks),
                  const CircleAvatar(
                    radius: 20,
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.white38,
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}
