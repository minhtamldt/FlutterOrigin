import 'package:flutter/material.dart';

class BaseStatelessWidget extends StatelessWidget {
  final Widget? child;
  BaseStatelessWidget({super.key, this.child}) {
    debugPrint(
        "===> ${DateTime.now()} - $runtimeType - CONTRUCTORS was called");
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("===> ${DateTime.now()} - $runtimeType - BUILD was called");
    return child!;
  }

  @override
  StatelessElement createElement() {
    debugPrint(
        "===> ${DateTime.now()} - $runtimeType - CREATE ELEMENT was called");
    return super.createElement();
  }
}
