import 'package:flutter/material.dart';
import 'package:flutter_origin/config/routers/app_router.dart';
import 'package:flutter_origin/config/themes/app_theme.dart';
import 'package:flutter_origin/injection_register.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OriginApp extends StatelessWidget {
  const OriginApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: AppLocalizations.supportedLocales.first,
      routerConfig: InjectionRegister.instance.get<AppRouter>().config(),
      title: 'Flutter Demo',
      theme: AppTheme.themeData,
    );
  }
}
