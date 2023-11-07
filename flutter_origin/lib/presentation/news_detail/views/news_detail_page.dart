import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_origin/main.dart';
import 'package:flutter_origin/presentation/news_detail/bloc/news_detail_page_bloc.dart';

@RoutePage()
class NewsDetailPage extends StatefulWidget {
  const NewsDetailPage({super.key});

  @override
  State<NewsDetailPage> createState() => _NewsDetailPageState();
}

class _NewsDetailPageState extends State<NewsDetailPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<NewsDetailPageBloc>(
        create: (context) => getIt<NewsDetailPageBloc>(),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('News Detail'),
          ),
          body: SafeArea(child: Container()),
        ));
  }
}
