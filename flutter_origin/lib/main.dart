import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_origin/app.dart';
import 'package:flutter_origin/data/data_provider/remote/news/news_api_service.dart';
import 'package:flutter_origin/data/repository/news/article_reposiory_impl.dart';
import 'package:flutter_origin/data/repository/news/article_repository.dart';
import 'package:flutter_origin/presentation/news/bloc/news_page_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> initializeDependencies() async {
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<NewsApiService>(NewsApiService(getIt()));
  getIt.registerSingleton<ArticleRepository>(ArticleRepositoryImpl(getIt()));
  getIt.registerFactory<NewsPageBloc>(() => NewsPageBloc(getIt()));
}

void main() async {
  await initializeDependencies();
  runApp(const OriginApp());
}
