import 'package:flutter/material.dart';
import 'package:flutter_origin/widgets/base_stateful_widget.dart';

class SecondPage extends BaseStatefulWidget {
  SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Second Page : ${DateTime.now()}",
            style: const TextStyle(fontSize: 15, color: Colors.red),
          )
        ],
      ),
    );
  }
}
