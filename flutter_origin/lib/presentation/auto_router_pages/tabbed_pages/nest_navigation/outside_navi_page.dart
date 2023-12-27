import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OutsideNaviPage extends StatefulWidget {
  const OutsideNaviPage({super.key});

  @override
  State<OutsideNaviPage> createState() => _OutsideNavipageState();
}

class _OutsideNavipageState extends State<OutsideNaviPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _createAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _createAppBar() {
    return AppBar(
      title: const Text("Out Side Navi Page"),
    );
  }

  _buildBody() {
    return Container(
      color: Colors.cyanAccent,
    );
  }
}
