import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_origin/config/auto_router/app_router.dart';
import 'package:flutter_origin/config/auto_router/path_router.dart';

@RoutePage()
class PageC extends StatefulWidget {
  final Map<String, dynamic>? paramters;
  const PageC({super.key, @QueryParam(AppRouter.argumentsKeys) this.paramters});

  @override
  State<PageC> createState() => _PageCState();
}

class _PageCState extends State<PageC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  _buildAppBar() {
    return AppBar(
      title: const Text("Page C"),
    );
  }

  _buildBody() {
    return Container(
      alignment: Alignment.center,
      color: Colors.brown,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "This is Page C",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            child: const Text('Next Page'),
            onPressed: () {
              AutoRouter.of(context).pushNamed(
                PathRouter.pageD,
              );
            },
          )
        ],
      ),
    );
  }
}
