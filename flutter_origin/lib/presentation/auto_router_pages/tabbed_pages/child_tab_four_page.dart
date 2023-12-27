import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ChildTabFourPage extends StatefulWidget {
  const ChildTabFourPage({super.key});

  @override
  State<ChildTabFourPage> createState() => _ChildTabFourState();
}

class _ChildTabFourState extends State<ChildTabFourPage> {
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
