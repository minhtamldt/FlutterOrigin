import 'package:flutter_origin/features/daily_news/domain/entities/article.dart';

class ArticleModel extends ArticleEntity {
  const ArticleModel(
      {super.id,
      super.author,
      super.title,
      super.description,
      super.url,
      super.urlToImage,
      super.publishedAt,
      super.content});

  factory ArticleModel.fromJson(Map<String, dynamic> json) => ArticleModel(
        author: json['author'] ?? "",
        title: json['title'] ?? "",
        description: json['description'] ?? "",
        url: json['url'] ?? "",
        urlToImage: json['urlToImage'] ?? "",
        publishedAt: json['publishedAt'] ?? "",
        content: json['content'] ?? "",
      );
}
