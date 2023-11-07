import 'package:flutter_origin/data/data_provider/base_dto/base_request_dto.dart';

class NewRequestDto extends BaseRequestDto {
  final String? category;
  final String? country;
  final int? pageSize;

  NewRequestDto({required this.category, required this.country, this.pageSize});

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = super.toJson();
    data['category'] = category;
    data['country'] = country;
    if (pageSize != null) {
      data['pageSize'] = pageSize;
    }
    return data;
  }
}
