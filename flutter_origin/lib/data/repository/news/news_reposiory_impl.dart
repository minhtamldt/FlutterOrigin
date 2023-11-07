import 'package:flutter_origin/core/constants/remote_constants.dart';
import 'package:flutter_origin/data/data_provider/base_dto/rest_response.dart';
import 'package:flutter_origin/data/data_provider/services/news/dto/request/news_request_dto.dart';
import 'package:flutter_origin/data/data_provider/services/news/dto/response/news_response_dto.dart';
import 'package:flutter_origin/data/data_provider/services/news/news_service.dart';
import 'package:flutter_origin/data/repository/news/news_repository.dart';

class NewsRepositoryImpl extends NewsRepository {
  final NewsService newsApiService;

  NewsRepositoryImpl(this.newsApiService);

  @override
  Future<RestResponse<NewsResponseDto>> getTopHeadelinesNews() async {
    final rs = await newsApiService.getNews(
        method: RemoteConstants.topHeadlines,
        paramters: NewRequestDto(
            category: "technology", country: "us", pageSize: 100));
    return rs;
  }
}
