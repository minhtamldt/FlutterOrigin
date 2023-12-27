import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ChildTabThreePage extends StatefulWidget {
  const ChildTabThreePage({super.key});

  @override
  State<ChildTabThreePage> createState() => _ChildTabThreePageState();
}

class _ChildTabThreePageState extends State<ChildTabThreePage> {
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
