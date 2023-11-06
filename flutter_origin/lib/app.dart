import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_origin/config/theme/app_theme.dart';
import 'package:flutter_origin/features/daily_news/presentation/bloc/article/remote/remote_article_bloc.dart';
import 'package:flutter_origin/features/daily_news/presentation/bloc/article/remote/remote_article_event.dart';
import 'package:flutter_origin/features/daily_news/presentation/pages/home/daily_news.dart';
import 'package:flutter_origin/injection_container.dart';

class OriginApp extends StatelessWidget {
  const OriginApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<RemoteArticleBloc>(
      create: (context) => sl()..add(const GetArticles()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: them(),
        home: const DailyNews(),
      ),
    );
  }
}
