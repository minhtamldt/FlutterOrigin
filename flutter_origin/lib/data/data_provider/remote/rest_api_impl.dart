import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_origin/core/base/dto/base_request_dto.dart';
import 'package:flutter_origin/core/base/dto/base_response_dto.dart';
import 'package:flutter_origin/data/data_provider/remote/response_status.dart';
import 'package:flutter_origin/data/data_provider/remote/rest_api.dart';
import 'package:flutter_origin/data/data_provider/remote/rest_response.dart';

class RestApiImpl implements RestApi {
  static const int connectTimeout = 5; //seconds
  static const int receiveTimeout = 60; //seconds
  final Dio _dio;
  final String _host;

  RestApiImpl(this._dio, this._host) {
    _dio.options = _getOptions();
  }

  BaseOptions _getOptions() {
    return BaseOptions(
      baseUrl: _host,
      connectTimeout: const Duration(seconds: connectTimeout),
      receiveTimeout: const Duration(seconds: receiveTimeout),
      headers: {
        "Content-Type": "application/json",
      },
    );
  }

  @override
  Future<RestResponse<TRespone>>
      get<TRespone extends BaseResponseDto, TRequest extends BaseRequestDto>(
          {required TRespone Function(dynamic) fromJson,
          required String method,
          required TRequest request,
          CancelToken? cancelToken}) async {
    TRespone? data;
    ResponseStatus? status = ResponseStatus.orthers;
    String? message;

    try {
      var rs = await _dio.get(method,
          queryParameters: request.toJson(), cancelToken: cancelToken);
      message = rs.statusMessage;

      if (rs.statusCode == HttpStatus.ok) {
        if (rs.data != null) {
          data = fromJson(rs.data);
          status = ResponseStatus.success;
        } else {
          status = ResponseStatus.dataFailed;
        }
      } else {
        status = ResponseStatus.orthers;
      }
      return RestResponse<TRespone>(data, status, message);
    } on DioException catch (e) {
      switch (e.type) {
        case DioExceptionType.sendTimeout:
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.receiveTimeout:
          status = ResponseStatus.timeOut;
          break;
        case DioExceptionType.cancel:
          status = ResponseStatus.cancel;
          break;
        default:
          status = ResponseStatus.orthers;
          break;
      }
      return RestResponse<TRespone>(data, status, message);
    } catch (e) {
      status = ResponseStatus.orthers;
      return RestResponse<TRespone>(data, status, message);
    }
  }
}