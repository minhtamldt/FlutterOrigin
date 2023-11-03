import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_origin/common/bases/widgets/base_page.dart';
import 'package:flutter_origin/presentations/pages/news/bloc/news_bloc.dart';
import 'package:flutter_origin/presentations/pages/news/bloc/news_event.dart';

@RoutePage()
class NewsPage extends BasePage<NewsBloc> {
  final NewsBloc _bloc = NewsBloc();

  NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();

  @override
  NewsBloc get bloc => _bloc;
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<NewsBloc>(
        create: (context) => widget.bloc,
        child: Builder(builder: (context2) {
          debugPrint("Builder ===>");
          return Center(
            child: Column(
              children: [
                Builder(builder: (context3) {
                  debugPrint("Text ===>");
                  context2.watch<NewsBloc>();
                  return Text("${DateTime.now()}");
                }),
                ElevatedButton(
                    onPressed: () {
                      context2.read<NewsBloc>().add(IncrementEvent());
                    },
                    child: const Text("Click me"))
              ],
            ),
          );
        }),
      ),
    );
  }
}
