import 'package:dio/dio.dart';
import 'package:flutter_origin/core/constants/remote_constants.dart';
import 'package:flutter_origin/data/data_provider/remote/news/dto/article_dto.dart';
import 'package:retrofit/retrofit.dart';
part 'news_api_service.g.dart';

@RestApi(baseUrl: RemoteConstants.newsAPIBaseURL)
abstract class NewsApiService {
  factory NewsApiService(Dio dio, {String baseUrl}) = _NewsApiService;

  @GET("/top-headlines")
  Future<HttpResponse<List<ArticleDto>>> getNewsArticles({
    @Query("apiKey") String? apiKey,
    @Query("country") String? country,
    @Query("category") String? category,
  });
}
