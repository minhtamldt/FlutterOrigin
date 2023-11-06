import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_origin/core/constants/constants.dart';
import 'package:flutter_origin/core/resources/data_state.dart';
import 'package:flutter_origin/features/daily_news/data/data_sources/remote/news_api_service.dart';
import 'package:flutter_origin/features/daily_news/data/models/article_mode.dart';
import 'package:flutter_origin/features/daily_news/domain/repository/article_repository.dart';

class ArticleRepositoryImpl extends ArticleRepository {
  final NewsApiService newsApiService;

  ArticleRepositoryImpl(this.newsApiService);

  @override
  Future<DataState<List<ArticleModel>>> getNewsArticles() async {
    try {
      final httpResponse = await newsApiService.getNewsArticles(
          apiKey: newsAPIKey, country: countryQuery, category: categoryQuery);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(DioException(
            response: httpResponse.response,
            type: DioExceptionType.badResponse,
            error: httpResponse.response.statusMessage,
            requestOptions: httpResponse.response.requestOptions));
      }
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }
}
