// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter_origin/data/data_provider/services/news/dto/response/article_dto.dart';


abstract class NewsPageState extends Equatable {
  final List<ArticleDto>? articles;
  final String? error;

  const NewsPageState({this.articles, this.error});

  @override
  List<Object> get props => [articles!, error!];
}

class NewsPageLoading extends NewsPageState {
  const NewsPageLoading();
}

class NewsPageDone extends NewsPageState {
  const NewsPageDone(List<ArticleDto> article) : super(articles: article);
}

class NewsPageError extends NewsPageState {
  const NewsPageError(String? error) : super(error: error);
}
