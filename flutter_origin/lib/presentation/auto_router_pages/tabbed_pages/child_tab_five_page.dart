import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ChidTabFivePage extends StatefulWidget {
  const ChidTabFivePage({super.key});

  @override
  State<ChidTabFivePage> createState() => _ChidTabFivePageState();
}

class _ChidTabFivePageState extends State<ChidTabFivePage> {
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
