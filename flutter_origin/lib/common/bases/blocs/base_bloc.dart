import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_origin/common/bases/blocs/events/base_event.dart';
import 'package:flutter_origin/common/bases/blocs/states/base_state.dart';

abstract class BaseBloc<E extends BaseEvent, S extends BaseState>
    extends Bloc<E, S> {
  BaseBloc(super.initialState);
}
