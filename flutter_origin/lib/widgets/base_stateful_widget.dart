import 'package:flutter/material.dart';

class BaseStatefulWidget extends StatefulWidget {
  final Widget? child;
  BaseStatefulWidget({super.key, this.child}) {
    debugPrint(
        "===> ${DateTime.now()} - $runtimeType - CONTRUCTORS was called");
  }

  @override
  // ignore: no_logic_in_create_state
  State<BaseStatefulWidget> createState() {
    debugPrint(
        "===> ${DateTime.now()} - $runtimeType - CREATE STATE was called");
    return _BaseStatefulWidgetState();
  }

  @override
  StatefulElement createElement() {
    debugPrint(
        "===> ${DateTime.now()} - $runtimeType - CREATE ELEMENT was called");
    return super.createElement();
  }
}

class _BaseStatefulWidgetState extends State<BaseStatefulWidget> {
  @override
  void initState() {
    debugPrint("===> ${DateTime.now()} - $runtimeType - INIT STATE was called");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("===> ${DateTime.now()} - $runtimeType - BUILD was called");
    return widget.child!;
  }

  @override
  void deactivate() {
    debugPrint("===> ${DateTime.now()} - $runtimeType - DEACTIVE was called");
    super.deactivate();
  }

  @override
  void activate() {
    debugPrint("===> ${DateTime.now()} - $runtimeType - ACTIVE was called");
    super.activate();
  }
}
