enum ResponseStatus {
  timeOut,
  success,
  dataFailed,
  cancel,
  orthers,
}
class RestResponse<T> {
  final T? data;
  final ResponseStatus? status;
  final String? message;
  RestResponse(this.data, this.status, this.message);
}