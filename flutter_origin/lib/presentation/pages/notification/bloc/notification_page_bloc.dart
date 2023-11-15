import 'package:flutter_origin/core/base/bloc/base_bloc.dart';
import 'package:flutter_origin/presentation/pages/notification/bloc/notification_page_event.dart';
import 'package:flutter_origin/presentation/pages/notification/bloc/notification_page_state.dart';

class NotificationPageBloc
    extends BaseBloc<NotificationPageEvent, NotificationPageState> {
  NotificationPageBloc(super.initialState);
}
