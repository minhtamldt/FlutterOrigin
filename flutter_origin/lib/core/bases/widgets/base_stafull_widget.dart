import 'package:flutter/material.dart';

class BaseStatefullWidget extends StatefulWidget {
  const BaseStatefullWidget({super.key});

  @override
  State<BaseStatefullWidget> createState() => _BaseStatefullWidgetState();
}

class _BaseStatefullWidgetState extends State<BaseStatefullWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
