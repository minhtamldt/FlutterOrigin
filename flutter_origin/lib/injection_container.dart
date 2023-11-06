import 'package:dio/dio.dart';
import 'package:flutter_origin/features/daily_news/data/data_sources/remote/news_api_service.dart';
import 'package:flutter_origin/features/daily_news/data/repository/article_reposiory_impl.dart';
import 'package:flutter_origin/features/daily_news/domain/repository/article_repository.dart';
import 'package:flutter_origin/features/daily_news/domain/usecases/get_article.dart';
import 'package:flutter_origin/features/daily_news/presentation/bloc/article/remote/remote_article_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  sl.registerSingleton<Dio>(Dio());
  sl.registerSingleton<NewsApiService>(NewsApiService(sl()));
  sl.registerSingleton<ArticleRepository>(ArticleRepositoryImpl(sl()));

  sl.registerSingleton<GetArticleUseCase>(GetArticleUseCase(sl()));

  sl.registerFactory<RemoteArticleBloc>(() => RemoteArticleBloc(sl()));
  // Bloc
  // sl.registerFactory(() => RemoteArticleBloc(sl()));

  // Use cases
  // sl.registerLazySingleton(() => GetArticleUseCase(sl()));

  // Repository
  // sl.registerLazySingleton<ArticleRepository>(
  //   () => ArticleRepositoryImpl(
  //     remoteDataSource: sl(),
  //     localDataSource: sl(),
  //     networkInfo: sl(),
  //   ),
  // );

  // Data sources
  // sl.registerLazySingleton<ArticleRemoteDataSource>(
  //   () => ArticleRemoteDataSourceImpl(client: sl()),
  // );

  // Core
  // sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  // External
  // sl.registerLazySingleton(() => Dio());
  // sl.registerLazySingleton(() => DataConnectionChecker());
}
