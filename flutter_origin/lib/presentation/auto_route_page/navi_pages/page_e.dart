import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_origin/config/auto_router/app_router.dart';
import 'package:flutter_origin/config/auto_router/path_router.dart';

@RoutePage()
class PageE extends StatefulWidget {
  final Map<String, dynamic>? paramters;
  const PageE({super.key, @QueryParam(AppRouter.argumentsKeys) this.paramters});

  @override
  State<PageE> createState() => _PageEState();
}

class _PageEState extends State<PageE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  _buildAppBar() {
    return AppBar(
      title: const Text("Page E"),
    );
  }

  _buildBody() {
    return Container(
      alignment: Alignment.center,
      color: Colors.grey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "This is Page E",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            child: const Text('Next Page'),
            onPressed: () {
              AutoRouter.of(context).pushNamed(PathRouter.pageB);
            },
          )
        ],
      ),
    );
  }
}
