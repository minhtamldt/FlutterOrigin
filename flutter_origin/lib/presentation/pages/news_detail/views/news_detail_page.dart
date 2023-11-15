import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_origin/core/base/widgets/page_widget.dart';
import 'package:flutter_origin/presentation/pages/news_detail/bloc/news_detail_page_bloc.dart';

@RoutePage()
class NewsDetailPage extends StatefulWidget {
  const NewsDetailPage({super.key});

  @override
  State<NewsDetailPage> createState() => _NewsDetailPageState();
}

class _NewsDetailPageState extends State<NewsDetailPage> {
  @override
  Widget build(BuildContext context) {
    return PageWidget<NewsDetailPageBloc>(
        child: Column(children: <Widget>[
      const Text('NewsDetail Page'),
    ]));
  }
}
