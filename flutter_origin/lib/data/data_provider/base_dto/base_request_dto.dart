abstract class BaseRequestDto {
  String apiKey = "2ef5be7ef43f4095a4eec5ecbe75fa47";
  Map<String, dynamic> toJson()
  {
    final Map<String, dynamic> data = <String, dynamic>{};
     data['apiKey'] = apiKey;
     return data;
  }
}
