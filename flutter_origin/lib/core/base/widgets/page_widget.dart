import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_origin/core/base/bloc/base_bloc.dart';
import 'package:flutter_origin/core/base/widgets/base_stateful_widget.dart';
import 'package:flutter_origin/injection_register.dart';

class PageWidget<B extends BaseBloc> extends BaseStatefulWidget {
  final Widget? child;

  const PageWidget({super.key, required this.child});

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
    B bloc = InjectionRegister.instance.get<B>();
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: BlocProvider<B>(
                create: (context) => bloc,
                child: Localizations.override(
                  context: context,
                  locale: const Locale('vi'),
                  child: widget.child!,
                ))));
  }
}
