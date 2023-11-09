import 'package:flutter/material.dart';

class BaseStatelessWidget extends StatelessWidget {
  final Widget? child;
  BaseStatelessWidget({super.key, this.child}) {
    debugPrint("---> ${DateTime.now()} - ${child.runtimeType} - CONTRUCTORS");
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("---> ${DateTime.now()} - ${child.runtimeType} - BUILD");
    return child!;
  }

  @override
  StatelessElement createElement() {
    debugPrint("---> ${DateTime.now()} - ${child.runtimeType} - CREATE ELEMENT");
    return super.createElement();
  }
}
