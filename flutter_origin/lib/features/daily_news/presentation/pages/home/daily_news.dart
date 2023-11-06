import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_origin/features/daily_news/presentation/bloc/article/remote/remote_article_bloc.dart';
import 'package:flutter_origin/features/daily_news/presentation/bloc/article/remote/remote_article_state.dart';
import 'package:flutter_origin/features/daily_news/presentation/wigets/article_widget.dart';

class DailyNews extends StatelessWidget {
  const DailyNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
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
    return BlocBuilder<RemoteArticleBloc, RemoteArticleState>(
        builder: (context, state) {
      if (state is RemoteArticleLoading) {
        return const Center(child: CircularProgressIndicator());
      }

      if (state is RemoteArticleError) {
        return const Center(child: Icon(Icons.refresh));
      }

      if (state is RemoteArticleDone) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return ArticleWidget(
              article: state.articles![index],
              onArticlePressed: (article) => print(article),
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
