import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class TabFourPage extends StatefulWidget {
  const TabFourPage({super.key});

  @override
  State<TabFourPage> createState() => _TabFourState();
}

class _TabFourState extends State<TabFourPage> {
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
      title: const Text("Four"),
    );
  }

  _buildBody() {
    return Container(
      color: Colors.pink,
    );
  }
}
