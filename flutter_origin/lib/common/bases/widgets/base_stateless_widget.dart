import 'package:flutter/material.dart';

class BaseStatelessWidget extends StatelessWidget {
  final Widget? child;
  BaseStatelessWidget({super.key, this.child}) {
    debugPrint("===> ${DateTime.now()} - $runtimeType - CONTRUCTORS");
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("===> ${DateTime.now()} - $runtimeType - BUILD");
    return child!;
  }

  @override
  StatelessElement createElement() {
    debugPrint("===> ${DateTime.now()} - $runtimeType - CREATE ELEMENT");
    return super.createElement();
  }
}
