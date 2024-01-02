import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_origin/config/auto_router/app_router.dart';
import 'package:flutter_origin/config/auto_router/path_router.dart';

@RoutePage()
class PageA extends StatefulWidget {
  final Map<String, dynamic>? paramters;
  const PageA({super.key, @QueryParam(AppRouter.argumentsKeys) this.paramters});

  @override
  State<PageA> createState() => _PageAState();
}

class _PageAState extends State<PageA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  _buildAppBar() {
    return AppBar(
      title: const Text("Page A"),
    );
  }

  _buildBody() {
    return Container(
      alignment: Alignment.center,
      color: Colors.blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "This is Page A",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            child: const Text('Next Page C'),
            onPressed: () {
              AutoRouter.of(context).pushNamed(PathRouter.pageC);
            },
          ),
          ElevatedButton(
            child: const Text('Next Page B1'),
            onPressed: () {
              AutoRouter.of(context).pushNamed(PathRouter.pageB);
            },
          )
        ],
      ),
    );
  }
}
