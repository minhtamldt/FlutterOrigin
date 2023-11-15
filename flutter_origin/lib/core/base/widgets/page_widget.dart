import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_origin/core/base/bloc/base_bloc.dart';
import 'package:flutter_origin/core/base/widgets/base_stateful_widget.dart';
import 'package:flutter_origin/injection_register.dart';

class PageWidget<B extends BaseBloc> extends BaseStatefulWidget {
  final Widget? child;
  final bool? useSafeArea;

  const PageWidget({super.key, required this.child, this.useSafeArea = true});

  @override
  State<PageWidget> createState() => _PageWidgetState<B>();

  static B of<B extends BaseBloc>(BuildContext context) {
    return BlocProvider.of<B>(context);
  }
}

class _PageWidgetState<B extends BaseBloc>
    extends BaseStatefulWidgetState<PageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: false, body: _buildBody());
  }

  _buildBody() {
    var body = BlocProvider<B>(
        create: (context) => InjectionRegister.instance.get<B>(),
        child: Localizations.override(
          context: context,
          locale: const Locale('vi'),
          child: widget.child!,
        ));
    if (widget.useSafeArea == true) {
      return SafeArea(child: body);
    } else {
      return body;
    }
  }
}
