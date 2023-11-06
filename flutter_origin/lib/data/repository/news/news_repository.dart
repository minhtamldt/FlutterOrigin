
import 'package:flutter_origin/data/data_provider/base_dto/rest_response.dart';
import 'package:flutter_origin/data/data_provider/services/news/dto/response/news_response_dto.dart';

abstract class ArticleRepository {
  Future<RestResponse<NewsResponseDto>> getNews();
}
