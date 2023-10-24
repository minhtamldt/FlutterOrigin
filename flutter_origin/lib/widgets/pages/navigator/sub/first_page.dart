import 'package:flutter/material.dart';
import 'package:flutter_origin/models/todo.dart';
import 'package:flutter_origin/widgets/base_stateful_widget.dart';
import 'package:flutter_origin/widgets/pages/navigator/sub/second_page.dart';

class FristPage extends BaseStatefulWidget {
  FristPage({super.key});

  @override
  State<FristPage> createState() => _FristPageState();
}

class _FristPageState extends State<FristPage> {
  final List<Todo> _todos = Todo.MockupDatas;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: ListView.builder(
        itemCount: _todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_todos[index].title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondPage(todo: _todos[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
