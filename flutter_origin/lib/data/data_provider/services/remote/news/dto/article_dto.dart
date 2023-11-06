import 'package:flutter_origin/data/repository/news/models/article.dart';

class ArticleDto extends ArticleEntity {
  const ArticleDto(
      {super.id,
      super.author,
      super.title,
      super.description,
      super.url,
      super.urlToImage,
      super.publishedAt,
      super.content});

  factory ArticleDto.fromJson(Map<String, dynamic> json) => ArticleDto(
        author: json['author'] ?? "",
        title: json['title'] ?? "",
        description: json['description'] ?? "",
        url: json['url'] ?? "",
        urlToImage: json['urlToImage'] ?? "",
        publishedAt: json['publishedAt'] ?? "",
        content: json['content'] ?? "",
      );
}
