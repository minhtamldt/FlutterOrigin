import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_origin/presentation/news/bloc/news_page_bloc.dart';
import 'package:flutter_origin/presentation/news/bloc/news_page_event.dart';
import 'package:flutter_origin/presentation/news/bloc/news_page_state.dart';
import 'package:flutter_origin/presentation/news/views/article_widget.dart';
import 'package:flutter_origin/main.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NewsPageBloc>(
      create: (context) => getIt()..add(const GetArticlesEvent()),
      child: Scaffold(
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }

  _buildAppBar() {
    return AppBar(
      title: const Text('Daily News'),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
      ],
    );
  }

  _buildBody() {
    return BlocBuilder<NewsPageBloc, NewsPageState>(builder: (context, state) {
      if (state is NewsPageLoading) {
        return const Center(child: CircularProgressIndicator());
      }

      if (state is NewsPageError) {
        return const Center(child: Icon(Icons.refresh));
      }

      if (state is NewsPageDone) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return ArticleWidget(
              article: state.articles![index],
              // onArticlePressed: (article) => print(article),
              // _onArticlePressed(context, article),
            );
          },
          itemCount: state.articles!.length,
        );
      }
      return const SizedBox();
    });
  }
}
