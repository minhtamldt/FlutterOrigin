import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PageB2 extends StatefulWidget {
  const PageB2({super.key});

  @override
  State<PageB2> createState() => _PageB2State();
}

class _PageB2State extends State<PageB2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  _buildAppBar() {
    return AppBar(
      title: const Text("Page B2"),
    );
  }

  _buildBody() {
    return Container(
      alignment: Alignment.center,
      color: Colors.purple,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "This is Page B2",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            child: const Text('PopToRoot'),
            onPressed: () {
              AutoRouter.of(context).popUntilRoot();
            },
          )
        ],
      ),
    );
  }
}
