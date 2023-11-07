import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_origin/app.dart';
import 'package:flutter_origin/config/router/app_router.dart';
import 'package:flutter_origin/core/constants/remote_constants.dart';
import 'package:flutter_origin/data/data_provider/rest_api/rest_api_service.dart';
import 'package:flutter_origin/data/data_provider/services/news/news_service.dart';
import 'package:flutter_origin/data/repository/news/news_reposiory_impl.dart';
import 'package:flutter_origin/data/repository/news/news_repository.dart';
import 'package:flutter_origin/presentation/login/bloc/login_bloc.dart';
import 'package:flutter_origin/presentation/login/bloc/login_state.dart';
import 'package:flutter_origin/presentation/news/bloc/news_page_bloc.dart';
import 'package:flutter_origin/presentation/news_detail/bloc/news_detail_page_bloc.dart';
import 'package:flutter_origin/presentation/news_detail/bloc/news_detail_page_state.dart';
import 'package:flutter_origin/presentation/setting/bloc/setting_page_bloc.dart';
import 'package:flutter_origin/presentation/setting/bloc/setting_page_state.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> initializeDependencies() async {
  getIt.registerSingleton<AppRouter>(AppRouter());
  //Register Services:
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<RestApiService>(
      RestApiService(getIt(), RemoteConstants.newsAPIBaseURL));
  getIt.registerSingleton<NewsService>(NewsService(getIt()));
  getIt.registerSingleton<NewsRepository>(NewsRepositoryImpl(getIt()));

  //Register Bloc
  getIt.registerFactory<NewsPageBloc>(() => NewsPageBloc(getIt()));
  getIt.registerFactory<LoginPageBloc>(
      () => LoginPageBloc(const LoginState("", "")));
  getIt.registerFactory<SettingPageBloc>(
      () => SettingPageBloc(SettingPageState()));
  getIt.registerFactory<NewsDetailPageBloc>(
      () => NewsDetailPageBloc(NewsDetailPageState()));
}

void main() async {
  await initializeDependencies();
  runApp(const OriginApp());
}
