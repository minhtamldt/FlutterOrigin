import 'package:flutter_origin/core/resources/data_state.dart';
import 'package:flutter_origin/data/repository/news/models/article.dart';

abstract class ArticleRepository {
  Future<DataState<List<ArticleModel>>> getNewsArticles();
}
