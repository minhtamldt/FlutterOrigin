import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ChildTabTwoPage extends StatefulWidget {
  const ChildTabTwoPage({super.key});

  @override
  State<ChildTabTwoPage> createState() => _ChildTabTwoPageState();
}

class _ChildTabTwoPageState extends State<ChildTabTwoPage> {
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
