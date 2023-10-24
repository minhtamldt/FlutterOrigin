import 'package:flutter/material.dart';
import 'package:flutter_origin/models/todo.dart';
import 'package:flutter_origin/widgets/base_stateful_widget.dart';

class SecondPage extends BaseStatefulWidget {
  // Declare a field that holds the Todo.
  final Todo todo;
  SecondPage({super.key, required this.todo});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.todo.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(widget.todo.description),
      ),
    );
  }
}
