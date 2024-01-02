import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_origin/config/auto_router/app_router.dart';
import 'package:flutter_origin/config/auto_router/path_router.dart';

@RoutePage()
class PageD extends StatefulWidget {
  final Map<String, dynamic>? paramters;
  const PageD({super.key, @QueryParam(AppRouter.argumentsKeys) this.paramters});


  @override
  State<PageD> createState() => _PageDState();
}

class _PageDState extends State<PageD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  _buildAppBar() {
    return AppBar(
      title: const Text("Page D"),
    );
  }

  _buildBody() {
    return Container(
      alignment: Alignment.center,
      color: Colors.green,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "This is Page D",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            child: const Text('Back Prev Page'),
            onPressed: () {
              AutoRouter.of(context).pop();
            },
          ),
          ElevatedButton(
            child: const Text('Back To Root'),
            onPressed: () {
              AutoRouter.of(context).popUntilRoot();
            },
          ),
          ElevatedButton(
            child: const Text('Replace D by E'),
            onPressed: () {
              AutoRouter.of(context).replaceNamed(PathRouter.pageE);
            },
          )
        ],
      ),
    );
  }
}
