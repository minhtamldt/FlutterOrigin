import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class TabOnePage extends StatefulWidget {
  const TabOnePage({super.key});

  @override
  State<TabOnePage> createState() => _TabOnePageState();
}

class _TabOnePageState extends State<TabOnePage> {
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
