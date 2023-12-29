import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class TabThreePage extends StatefulWidget {
  const TabThreePage({super.key});

  @override
  State<TabThreePage> createState() => _TabThreePageState();
}

class _TabThreePageState extends State<TabThreePage> {
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
      title: const Text("Two"),
    );
  }

  _buildBody() {
    return Container(
      color: Colors.orange,
    );
  }
}
