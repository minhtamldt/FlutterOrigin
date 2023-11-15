import 'package:flutter_origin/core/base/bloc/base_bloc.dart';
import 'package:flutter_origin/presentation/pages/home/bloc/home_page_event.dart';
import 'package:flutter_origin/presentation/pages/home/bloc/home_page_state.dart';

class HomePageBloc extends BaseBloc<HomePageEvent, HomePageState> {
  HomePageBloc(super.initialState);
}
