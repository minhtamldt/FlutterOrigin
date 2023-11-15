import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_origin/core/base/widgets/page_widget.dart';
import 'package:flutter_origin/core/constants/router_contants.dart';
import 'package:flutter_origin/presentation/pages/home/bloc/home_page_bloc.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return PageWidget<HomePageBloc>(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Home Page'),
            ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).pushNamed(RouterContants.newsDetailPage);
              },
              child: const Text('Go to Detail Page'),
            ),
            ElevatedButton(
              onPressed: () {
                AutoRouter.of(context)
                    .pushNamed(RouterContants.notificactionPage);
              },
              child: const Text('Go to Notification Page'),
            ),
          ],
        ),
      ),
    );
  }
}
