import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_origin/config/auto_router/app_router.dart';

@RoutePage()
class TabSixPage extends StatefulWidget {
  const TabSixPage({super.key});

  @override
  State<TabSixPage> createState() => _TabSixPageState();
}

class _TabSixPageState extends State<TabSixPage> {
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
              child: const Text('Push()'),
              onPressed: () {
                AutoRouter.of(context).push(
                    SubFirstRoute(agrumentData: "push with Route instance"));
              },
            ),
            ElevatedButton(
              child: const Text('PushNamed()'),
              onPressed: () {
                // var arguments =
                //     "${PathRouter.subFirstPage}:agrumentData=pushName Name";
                // AutoRouter.of(context).pushNamed(arguments);
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
