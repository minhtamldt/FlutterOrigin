import 'package:flutter_origin/common/bases/blocs/events/base_event.dart';

abstract class PageEvent extends BaseEvent {
  const PageEvent();
}

class ResumeEvent extends PageEvent {
  const ResumeEvent();

  @override
  List<Object?> get props => [];
}

class InActived extends PageEvent {
  const InActived();

  @override
  List<Object?> get props => [];
}
