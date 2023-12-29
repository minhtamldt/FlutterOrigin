import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class TabTwoPage extends StatefulWidget {
  const TabTwoPage({super.key});

  @override
  State<TabTwoPage> createState() => _TabTwoPageState();
}

class _TabTwoPageState extends State<TabTwoPage> {
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
      color: Colors.green,
    );
  }
}
