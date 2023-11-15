import 'package:flutter_origin/core/base/bloc/base_bloc.dart';
import 'package:flutter_origin/presentation/pages/search/bloc/search_page_event.dart';
import 'package:flutter_origin/presentation/pages/search/bloc/search_page_state.dart';

class SearchPageBloc extends BaseBloc<SearchPageEvent, SearchPageState> {
  SearchPageBloc(super.initialState);
}
