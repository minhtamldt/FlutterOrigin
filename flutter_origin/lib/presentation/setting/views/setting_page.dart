import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_origin/main.dart';
import 'package:flutter_origin/presentation/setting/bloc/setting_page_bloc.dart';

@RoutePage()
class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<SettingPageBloc>(
        create: (context) => getIt<SettingPageBloc>(),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Setting'),
          ),
          body: SafeArea(child: Container()),
        ));
  }
}
