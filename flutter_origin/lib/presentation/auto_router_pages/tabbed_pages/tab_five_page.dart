import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class TabFivePage extends StatefulWidget {
  const TabFivePage({super.key});

  @override
  State<TabFivePage> createState() => _TabFivePageState();
}

class _TabFivePageState extends State<TabFivePage> {
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
      title: const Text("Five"),
    );
  }

  _buildBody() {
    return Container(
      color: Colors.yellow,
    );
  }
}
