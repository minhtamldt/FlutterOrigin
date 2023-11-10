import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_origin/core/base/bloc/base_event.dart';
import 'package:flutter_origin/core/base/bloc/base_state.dart';

class BaseBloc<E extends BaseEvent, S extends BaseState> extends Bloc<E, S> {
  BaseBloc(super.initialState);

  @override
  void onError(Object error, StackTrace stackTrace) {
    debugPrint('---> ${DateTime.now()} - $runtimeType - $error}');
    super.onError(error, stackTrace);
  }

  @override
  void onEvent(E event) {
    debugPrint('---> ${DateTime.now()} - $runtimeType - ${event.runtimeType}}');
    super.onEvent(event);
  }

  @override
  void onChange(Change<S> change) {
    debugPrint(
        '---> ${DateTime.now()} - $runtimeType - currentState: ${change.currentState}, nextState: ${change.nextState}}');
    super.onChange(change);
  }

  @override
  void onTransition(Transition<E, S> transition) {
    debugPrint(
        '---> ${DateTime.now()} - $runtimeType - transition: $transition}');
    super.onTransition(transition);
  }
}
