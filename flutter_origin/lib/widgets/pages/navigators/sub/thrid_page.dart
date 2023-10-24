import 'package:flutter/material.dart';
import 'package:flutter_origin/widgets/base_stateful_widget.dart';

class ThridPage extends BaseStatefulWidget {
  ThridPage({super.key});

  @override
  State<ThridPage> createState() => _ThridPageState();
}

class _ThridPageState extends State<ThridPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Thrid Page : ${DateTime.now()}",
            style: const TextStyle(fontSize: 15, color: Colors.white),
          )
        ],
      ),
    );
  }
}
