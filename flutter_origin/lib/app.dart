import 'package:flutter/material.dart';
import 'package:flutter_origin/config/theme/app_theme.dart';
import 'package:flutter_origin/features/daily_news/presentation/news/views/news_page.dart';

class OriginApp extends StatelessWidget {
  const OriginApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: them(),
      home: const NewsPage(),
    );
  }
}
