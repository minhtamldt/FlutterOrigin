import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_origin/config/auto_router/app_router_extension.dart';
import 'package:flutter_origin/config/auto_router/path_router.dart';

@RoutePage()
class PageB1 extends StatefulWidget {
  const PageB1({super.key});

  @override
  State<PageB1> createState() => _PageA1State();
}

class _PageA1State extends State<PageB1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  _buildAppBar() {
    return AppBar(
      title: const Text("Page B1"),
    );
  }

  Object? rs;
  _buildBody() {
    return Container(
      alignment: Alignment.center,
      color: Colors.blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "This is Page B1",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            child: const Text('Next Page'),
            onPressed: () async {
              Map<String, dynamic> myDictionary = {
                'name': 'John',
                'age': 25,
                'city': 'New York',
              };
              AutoRouter.of(context)
                  .newPushNamed(PathRouter.pageB2, myDictionary);
            },
          )
        ],
      ),
    );
  }
}
