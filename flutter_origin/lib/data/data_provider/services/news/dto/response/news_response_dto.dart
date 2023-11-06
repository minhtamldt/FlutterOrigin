
import 'package:flutter_origin/data/data_provider/base_dto/base_response_dto.dart';
import 'package:flutter_origin/data/data_provider/services/news/dto/response/article_dto.dart';

class NewsResponseDto extends BaseResponseDto  {
  String? status;
  int? totalResults;
  List<ArticleDto>? articles;

  NewsResponseDto({this.status, this.totalResults, this.articles});

  NewsResponseDto.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    totalResults = json['totalResults'];
    if (json['articles'] != null) {
      articles = <ArticleDto>[];
      json['articles'].forEach((v) {
        articles!.add(ArticleDto.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['totalResults'] = totalResults;
    if (articles != null) {
      data['articles'] = articles!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
