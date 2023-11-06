import 'package:flutter_origin/core/resources/data_state.dart';
import 'package:flutter_origin/features/daily_news/domain/entities/article.dart';

abstract class ArticleRepository {
  Future<DataState<List<ArticleEntity>>> getNewsArticles();
}
