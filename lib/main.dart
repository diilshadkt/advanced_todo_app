import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_with_clean_architecture/features/todo_app/presentation/pages/home_page.dart';

void main() {
  runApp( const ProviderScope(child: MyApp()));
}

class MyApp extends  ConsumerWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return MaterialApp(
      title: 'advanced todo app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
