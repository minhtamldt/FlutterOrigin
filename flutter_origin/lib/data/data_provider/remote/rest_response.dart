import 'package:flutter_origin/data/data_provider/remote/response_status.dart';

class RestResponse<T> {
  final T? data;
  final ResponseStatus? status;
  final String? message;
  RestResponse(this.data, this.status, this.message);
}
