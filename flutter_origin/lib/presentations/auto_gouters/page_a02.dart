import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_origin/common/bases/widgets/base_stateless_widget.dart';

@RoutePage()
class PageA02 extends BaseStatelessWidget {
  PageA02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Page PageA02"),
            const SizedBox(height: 16),
            ElevatedButton(
                onPressed: () {
                  context.popRoute();
                },
                child: const Text(
                  "Back",
                  style: TextStyle(color: Colors.black),
                )),
          ],
        ),
      )),
    );
  }
}
