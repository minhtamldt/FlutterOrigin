import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_origin/presentation/news_detail/bloc/news_detail_page_event.dart';
import 'package:flutter_origin/presentation/news_detail/bloc/news_detail_page_state.dart';

class NewsDetailPageBloc
    extends Bloc<NewsDetailPageEvent, NewsDetailPageState> {
  NewsDetailPageBloc(super.initialState);
}
