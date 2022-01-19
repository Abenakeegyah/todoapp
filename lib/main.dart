import 'package:flutter/material.dart';
import 'package:todo_app/home_view.dart';

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'TodoAppp',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: HomeView(),
    );
  }
}
