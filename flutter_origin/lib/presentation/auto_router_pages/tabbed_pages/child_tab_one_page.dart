import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ChildTabOnePage extends StatefulWidget {
  const ChildTabOnePage({super.key});

  @override
  State<ChildTabOnePage> createState() => _ChildTabOnePageState();
}

class _ChildTabOnePageState extends State<ChildTabOnePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _createAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _createAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: const Text("One"),
    );
  }

  _buildBody() {
    return Container(
      color: Colors.red,
    );
  }
}
