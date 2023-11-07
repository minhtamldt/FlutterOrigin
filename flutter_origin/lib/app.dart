import 'package:flutter/material.dart';
import 'package:flutter_origin/config/router/app_router.dart';
import 'package:flutter_origin/config/theme/app_theme.dart';
import 'package:flutter_origin/main.dart';

class OriginApp extends StatelessWidget {
  const OriginApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: getIt<AppRouter>().config(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: them(),
    );
  }
}
