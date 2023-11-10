import 'package:dio/dio.dart';
import 'package:flutter_origin/core/base/dto/base_request_dto.dart';
import 'package:flutter_origin/core/base/dto/base_response_dto.dart';
import 'package:flutter_origin/data/data_provider/remote/rest_response.dart';

abstract class RestApi {
  Future<RestResponse<TRespone>>
      get<TRespone extends BaseResponseDto, TRequest extends BaseRequestDto>(
          {required TRespone Function(dynamic) fromJson,
          required String method,
          required TRequest request,
          CancelToken? cancelToken});
}
