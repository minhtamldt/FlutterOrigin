
import 'package:flutter_origin/data/data_provider/services/news/dto/response/source_dto.dart';

class ArticleDto {
  SourceDto? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  ArticleDto(
      {source,
      author,
      title,
      description,
      url,
      urlToImage,
      publishedAt,
      content});

  ArticleDto.fromJson(Map<String, dynamic> json) {
    source =
        json['source'] != null ? SourceDto.fromJson(json['source']) : null;
    author = json['author'];
    title = json['title'];
    description = json['description'];
    url = json['url'];
    urlToImage = json['urlToImage'];
    publishedAt = json['publishedAt'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (source != null) {
      data['source'] = source!.toJson();
    }
    data['author'] = author;
    data['title'] = title;
    data['description'] = description;
    data['url'] = url;
    data['urlToImage'] = urlToImage;
    data['publishedAt'] = publishedAt;
    data['content'] = content;
    return data;
  }
}
