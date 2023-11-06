import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_origin/core/resources/data_state.dart';
import 'package:flutter_origin/features/daily_news/domain/usecases/get_article.dart';
import 'package:flutter_origin/features/daily_news/presentation/bloc/article/remote/remote_article_event.dart';
import 'package:flutter_origin/features/daily_news/presentation/bloc/article/remote/remote_article_state.dart';

class RemoteArticleBloc extends Bloc<RemoteArticleEvent, RemoteArticleState> {
  final GetArticleUseCase _getArticleUseCase;

  RemoteArticleBloc(this._getArticleUseCase)
      : super(const RemoteArticleLoading()) {
    on<GetArticles>(_onGetArticles);
  }

  FutureOr<void> _onGetArticles(
      GetArticles event, Emitter<RemoteArticleState> emit) async {
    final dataState = await _getArticleUseCase(null);
    if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
      emit(RemoteArticleDone(dataState.data!));
    } else if (dataState is DataFailed) {
      emit(RemoteArticleError(dataState.error!));
    }
  }
}
