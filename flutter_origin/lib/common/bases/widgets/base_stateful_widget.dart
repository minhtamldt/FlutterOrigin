import 'package:flutter/material.dart';

class BaseStatefulWidget extends StatefulWidget {
  final Widget? child;
  BaseStatefulWidget({super.key, this.child}) {
    debugPrint("===> ${DateTime.now()} - $runtimeType - CONTRUCTORS");
  }

  @override
  // ignore: no_logic_in_create_state
  State<BaseStatefulWidget> createState() {
    debugPrint("===> ${DateTime.now()} - $runtimeType - CREATE STATE");
    return _BaseStatefulWidgetState();
  }

  @override
  StatefulElement createElement() {
    debugPrint("===> ${DateTime.now()} - $runtimeType - CREATE ELEMENT");
    return super.createElement();
  }
}

class _BaseStatefulWidgetState extends State<BaseStatefulWidget> {
  @override
  void initState() {
    debugPrint("===> ${DateTime.now()} - $runtimeType - INIT STATE");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("===> ${DateTime.now()} - $runtimeType - BUILD");
    return widget.child!;
  }

  @override
  void deactivate() {
    debugPrint("===> ${DateTime.now()} - $runtimeType - DEACTIVE");
    super.deactivate();
  }

  @override
  void activate() {
    debugPrint("===> ${DateTime.now()} - $runtimeType - ACTIVE");
    super.activate();
  }

  @override
  void dispose() {
    debugPrint("===> ${DateTime.now()} - $runtimeType - DISPOSE");
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant BaseStatefulWidget oldWidget) {
    debugPrint("===> ${DateTime.now()} - $runtimeType - DIDUPDATEDWIDGET");
    super.didUpdateWidget(oldWidget);
  }
}
