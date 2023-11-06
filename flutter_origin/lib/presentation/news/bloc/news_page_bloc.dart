import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_origin/core/resources/data_state.dart';
import 'package:flutter_origin/data/repository/news/article_repository.dart';
import 'package:flutter_origin/presentation/news/bloc/news_page_event.dart';
import 'package:flutter_origin/presentation/news/bloc/news_page_state.dart';

class NewsPageBloc extends Bloc<NewsPageEvent, NewsPageState> {
  final ArticleRepository _articleRepository;

  NewsPageBloc(this._articleRepository) : super(const NewsPageLoading()) {
    on<GetArticlesEvent>(onGetArticles);
  }

  void onGetArticles(
      GetArticlesEvent event, Emitter<NewsPageState> emit) async {
    final dataState = await _articleRepository.getNewsArticles();

    if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
      emit(NewsPageDone(dataState.data!));
    }

    if (dataState is DataFailed) {
      emit(NewsPageError(dataState.error!));
    }
  }
}
