import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_origin/common/bases/widgets/base_stateless_widget.dart';
import 'package:flutter_origin/presentations/navigators/routes/route_constants.dart';

@RoutePage()
class PageC extends BaseStatelessWidget {
  PageC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page C"),
      ),
      body: Container(
        color: Colors.greenAccent,
        child: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Page C"),
              const SizedBox(height: 16),
              ElevatedButton(
                  onPressed: () {
                    AutoRouter.of(context).pushNamed(RouteConstants.setting);
                  },
                  child: const Text("Open Setting")),
            ],
          ),
        )),
      ),
    );
  }
}
