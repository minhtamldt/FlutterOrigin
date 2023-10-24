import 'package:flutter/material.dart';
import 'package:flutter_origin/widgets/base_stateful_widget.dart';

class FirstPage extends BaseStatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF44336),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "First Page : ${DateTime.now()}",
            style: const TextStyle(fontSize: 15, color: Colors.white),
          )
        ],
      ),
    );
  }
}
