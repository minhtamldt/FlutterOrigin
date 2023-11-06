// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

import 'package:flutter_origin/data/repository/news/models/article.dart';

abstract class NewsPageState extends Equatable {
  final List<ArticleModel>? articles;
  final DioException? error;

  const NewsPageState({this.articles, this.error});

  @override
  List<Object> get props => [articles!, error!];
}

class NewsPageLoading extends NewsPageState {
  const NewsPageLoading();
}

class NewsPageDone extends NewsPageState {
  const NewsPageDone(List<ArticleModel> article) : super(articles: article);
}

class NewsPageError extends NewsPageState {
  const NewsPageError(DioException error) : super(error: error);
}
