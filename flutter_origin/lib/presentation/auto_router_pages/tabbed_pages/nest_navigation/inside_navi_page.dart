import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class InsideNaviPage extends StatefulWidget {
  const InsideNaviPage({super.key});

  @override
  State<InsideNaviPage> createState() => _InsideNaviPageState();
}

class _InsideNaviPageState extends State<InsideNaviPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _createAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _createAppBar() {
    return AppBar(
      title: const Text("InsideNaviPage"),
    );
  }

  _buildBody() {
    return Container(
      color: Colors.brown,
    );
  }
}
