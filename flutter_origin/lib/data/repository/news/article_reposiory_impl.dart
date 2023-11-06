import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_origin/core/constants/remote_constants.dart';
import 'package:flutter_origin/core/resources/data_state.dart';
import 'package:flutter_origin/data/data_provider/remote/news/dto/article_dto.dart';
import 'package:flutter_origin/data/data_provider/remote/news/news_api_service.dart';
import 'package:flutter_origin/data/repository/news/article_repository.dart';

class ArticleRepositoryImpl extends ArticleRepository {
  final NewsApiService newsApiService;

  ArticleRepositoryImpl(this.newsApiService);

  @override
  Future<DataState<List<ArticleDto>>> getNewsArticles() async {
    try {
      final httpResponse = await newsApiService.getNewsArticles(
          apiKey: RemoteConstants.newsAPIKey,
          country: RemoteConstants.countryQuery,
          category: RemoteConstants.categoryQuery);

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
