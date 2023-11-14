import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BaseStatefulWidget extends StatefulWidget {
  final Widget? child;
  const BaseStatefulWidget({super.key, this.child});

  @override
  // ignore: no_logic_in_create_state
  State<BaseStatefulWidget> createState() {
    debugPrint("---> ${DateTime.now()} - ${child.runtimeType} - CREATE STATE");
    return BaseStatefulWidgetState();
  }

  @override
  StatefulElement createElement() {
    debugPrint(
        "---> ${DateTime.now()} - ${child.runtimeType} - CREATE ELEMENT");
    return super.createElement();
  }
}

class BaseStatefulWidgetState<T extends BaseStatefulWidget> extends State<T> {
  @override
  void initState() {
    debugPrint("---> ${DateTime.now()} - ${widget.runtimeType} - INIT STATE");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("---> ${DateTime.now()} - ${widget.runtimeType} - BUILD");
    return widget.child!;
  }

  @override
  void deactivate() {
    debugPrint("---> ${DateTime.now()} - ${widget.runtimeType} - DEACTIVE");
    super.deactivate();
  }

  @override
  void activate() {
    debugPrint("---> ${DateTime.now()} - ${widget.runtimeType} - ACTIVE");
    super.activate();
  }

  @override
  void dispose() {
    debugPrint(
        "---> ${DateTime.now()} - ${widget.child.runtimeType} - DISPOSE");
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant T oldWidget) {
    debugPrint(
        "---> ${DateTime.now()} - ${widget.runtimeType} - DID UPDATED WIDGET");
    super.didUpdateWidget(oldWidget);
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    debugPrint(
        "---> ${DateTime.now()} - ${widget.runtimeType} - DEBUG FILL PROPERTIES -$properties");
    super.debugFillProperties(properties);
  }
}
