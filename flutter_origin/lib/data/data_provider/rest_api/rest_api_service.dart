
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_origin/data/data_provider/base_dto/base_request_dto.dart';
import 'package:flutter_origin/data/data_provider/base_dto/base_response_dto.dart';
import 'package:flutter_origin/data/data_provider/base_dto/rest_response.dart';

class RestApiService {
  static const int connectTimeout =  5; //seconds
  static const int receiveTimeout = 60; //seconds
  final Dio _dio;
  final String _host;

  RestApiService(this._dio, this._host)
  {
     _dio.options = _getOptions();
  }
  
  BaseOptions _getOptions() {
    return BaseOptions(
      baseUrl: _host,
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout:  const Duration(seconds: 60),
      headers: {
        "Content-Type": "application/json",
      },
    );
  }

  Future<RestResponse<TRespone>> get<TRespone extends BaseResponseDto, TRequest extends BaseRequestDto>({required TRespone Function(dynamic) fromJson,  required String method, required TRequest request }) async {
    
    TRespone? data;
    ResponseStatus? status = ResponseStatus.orthers;
    String? message;

    try { 
       var rs = await _dio.get(method, queryParameters: request.toJson());
       message = rs.statusMessage;
       
       if(rs.statusCode == HttpStatus.ok)
       {
          if(rs.data != null)
          {
            data = fromJson(rs.data);
            status = ResponseStatus.success;
          }
          else
          {
            status = ResponseStatus.dataFailed;
          }
       }
       else
       {
         status = ResponseStatus.orthers;
       }
       return RestResponse<TRespone>(data, status, message);
    } on DioException catch (e) {
      switch(e.type)
      {
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
    } catch(e)
    {
      status = ResponseStatus.orthers;
      return RestResponse<TRespone>(data, status, message);
    }
  }
}