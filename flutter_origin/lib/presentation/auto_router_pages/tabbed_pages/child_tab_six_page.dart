import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class WrapChildTabSixPage extends AutoRouter {
  const WrapChildTabSixPage({super.key});
}

@RoutePage()
class ChildTabSixPage extends StatefulWidget {
  const ChildTabSixPage({super.key});

  @override
  State<ChildTabSixPage> createState() => _ChildTabSixPageState();
}

class _ChildTabSixPageState extends State<ChildTabSixPage> {
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
      title: const Text("Six"),
    );
  }

  _buildBody() {
    return Container(
      color: Colors.purple,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text('Push Outside'),
              onPressed: () {
                AutoRouter.of(context).pushNamed("/outSideNaviRoute");
              },
            ),
            ElevatedButton(
              child: const Text('Push InSide'),
              onPressed: () {
                AutoRouter.of(context).pushNamed("inSideNaviRoute");
              },
            ),
            ElevatedButton(
              child: const Text('Push Popup'),
              onPressed: () {
                // AutoRouter.of(context).pushNamed("/popup");
              },
            ),
            ElevatedButton(
              child: const Text('Logout'),
              onPressed: () {
                AutoRouter.of(context).replaceNamed("/loginPage");
              },
            ),
          ],
        ),
      ),
    );
  }
}
