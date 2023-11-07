import 'dart:async';

import 'package:flutter_origin/core/constants/remote_constants.dart';
import 'package:flutter_origin/data/data_provider/base_dto/rest_response.dart';
import 'package:flutter_origin/data/data_provider/rest_api/rest_api_service.dart';
import 'package:flutter_origin/data/data_provider/services/news/dto/request/news_request_dto.dart';
import 'package:flutter_origin/data/data_provider/services/news/dto/response/news_response_dto.dart';

class NewsService {
  final RestApiService _restApiService;
  NewsService(this._restApiService);

  Future<RestResponse<NewsResponseDto>> getNews(
      {required String method, required NewRequestDto paramters}) async {
    var response = await _restApiService.get<NewsResponseDto, NewRequestDto>(
        fromJson: (data) => NewsResponseDto.fromJson(data),
        method: RemoteConstants.topHeadlines,
        request: paramters);
    return response;
  }
}
