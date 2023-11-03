import 'dart:async';

import 'package:bloc/src/bloc.dart';
import 'package:flutter_origin/common/bases/blocs/events/page_event.dart';
import 'package:flutter_origin/common/bases/blocs/page_bloc.dart';
import 'package:flutter_origin/presentations/pages/news/bloc/news_event.dart';
import 'package:flutter_origin/presentations/pages/news/bloc/news_state.dart';

class NewsBloc extends PageBloc<NewsEvent, NewsState> {
  NewsBloc() : super(NewsState(counter: 0)) {
    on<IncrementEvent>(_onIncrementEvent);
  }

  @override
  FutureOr<void> onInActivedEvent(InActived event, Emitter<NewsState> emit) {}

  @override
  FutureOr<void> onResumeEvent(ResumeEvent event, Emitter<NewsState> emit) {}

  FutureOr<void> _onIncrementEvent(
      IncrementEvent event, Emitter<NewsState> emit) {
    emit(state.copyWith(counter: state.counter! + 1));
  }
}
