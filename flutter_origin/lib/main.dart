import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_origin/app.dart';
import 'package:flutter_origin/core/constants/remote_constants.dart';
import 'package:flutter_origin/data/data_provider/rest_api/rest_api_service.dart';
import 'package:flutter_origin/data/data_provider/services/news/news_service.dart';
import 'package:flutter_origin/data/repository/news/news_reposiory_impl.dart';
import 'package:flutter_origin/data/repository/news/news_repository.dart';
import 'package:flutter_origin/presentation/news/bloc/news_page_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> initializeDependencies() async {
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<RestApiService>(
      RestApiService(getIt(), RemoteConstants.newsAPIBaseURL));
  getIt.registerSingleton<NewsService>(NewsService(getIt()));
  getIt.registerSingleton<NewsRepository>(NewsRepositoryImpl(getIt()));
  getIt.registerFactory<NewsPageBloc>(() => NewsPageBloc(getIt()));
}

void main() async {
  await initializeDependencies();
  runApp(const OriginApp());
}
