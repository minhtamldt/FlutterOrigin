import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_origin/data/data_provider/base_dto/rest_response.dart';
import 'package:flutter_origin/data/repository/news/news_repository.dart';
import 'package:flutter_origin/presentation/news/bloc/news_page_event.dart';
import 'package:flutter_origin/presentation/news/bloc/news_page_state.dart';

class NewsPageBloc extends Bloc<NewsPageEvent, NewsPageState> {
  final NewsRepository _articleRepository;

  NewsPageBloc(this._articleRepository) : super(const NewsPageLoading()) {
    on<GetArticlesEvent>(onGetArticles);
  }

  void onGetArticles(
      GetArticlesEvent event, Emitter<NewsPageState> emit) async {
    final rs = await _articleRepository.getTopHeadelinesNews();

    switch (rs.status) {
      case ResponseStatus.success:
        emit(NewsPageDone(rs.data!.articles!));
        break;
      default:
        emit(NewsPageError(rs.message));
        break;
    }
  }
}
