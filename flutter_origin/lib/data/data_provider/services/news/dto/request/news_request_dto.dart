import 'package:flutter_origin/data/data_provider/base_dto/base_request_dto.dart';

class NewRequestDto extends BaseRequestDto {
  final String? category;
  NewRequestDto({required this.category});
    @override
    Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = super.toJson();
     data['category'] = category;
    return data;
  }
}