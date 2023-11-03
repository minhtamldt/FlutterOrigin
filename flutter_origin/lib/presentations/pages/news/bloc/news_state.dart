// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_origin/common/bases/blocs/states/page_state.dart';

class NewsState extends PageState {
  int? counter;
  NewsState({
    this.counter,
  });
  @override
  List<Object?> get props => [counter];

  NewsState copyWith({
    int? counter,
  }) {
    return NewsState(
      counter: counter ?? this.counter,
    );
  }
}
