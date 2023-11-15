import 'package:flutter_origin/core/base/bloc/base_bloc.dart';
import 'package:flutter_origin/presentation/pages/news_detail/bloc/news_detail_page_event.dart';
import 'package:flutter_origin/presentation/pages/news_detail/bloc/news_detail_page_state.dart';

class NewsDetailPageBloc
    extends BaseBloc<NewsDetailPageEvent, NewsDetailPageState> {
  NewsDetailPageBloc(super.initialState);
}
