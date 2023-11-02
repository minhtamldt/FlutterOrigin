import 'dart:async';

import 'package:bloc/src/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_origin/common/bases/blocs/base_bloc.dart';
import 'package:flutter_origin/common/bases/blocs/events/page_event.dart';
import 'package:flutter_origin/common/bases/blocs/states/page_state.dart';

abstract class PageBloc<E extends PageEvent, S extends PageState>
    extends BaseBloc<PageEvent, S> {
  PageBloc(super.initialState) {
    on<ResumeEvent>(onResumeEvent);
    on<InActived>(onInActivedEvent);
  }

  FutureOr<void> onResumeEvent(ResumeEvent event, Emitter<S> emit);
  FutureOr<void> onInActivedEvent(InActived event, Emitter<S> emit);
}
