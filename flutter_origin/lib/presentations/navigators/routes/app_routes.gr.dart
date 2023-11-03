// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;
import 'package:flutter/widgets.dart' as _i11;
import 'package:flutter_origin/presentations/auto_gouters/main_tabbed_page.dart'
    as _i2;
import 'package:flutter_origin/presentations/auto_gouters/page_a.dart' as _i4;
import 'package:flutter_origin/presentations/auto_gouters/page_a01.dart' as _i5;
import 'package:flutter_origin/presentations/auto_gouters/page_a02.dart' as _i6;
import 'package:flutter_origin/presentations/auto_gouters/page_c.dart' as _i7;
import 'package:flutter_origin/presentations/auto_gouters/setting_page.dart'
    as _i8;
import 'package:flutter_origin/presentations/pages/login/views/login_page.dart'
    as _i1;
import 'package:flutter_origin/presentations/pages/news/views/new_page.dart'
    as _i3;

abstract class $AppRouter extends _i9.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.LoginPage(key: args.key),
      );
    },
    MainTabbedRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.MainTabbedPage(),
      );
    },
    NewsRoute.name: (routeData) {
      final args =
          routeData.argsAs<NewsRouteArgs>(orElse: () => const NewsRouteArgs());
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.NewsPage(key: args.key),
      );
    },
    RouteA.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.PageA(),
      );
    },
    RouteA01.name: (routeData) {
      final args =
          routeData.argsAs<RouteA01Args>(orElse: () => const RouteA01Args());
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.PageA01(key: args.key),
      );
    },
    RouteA02.name: (routeData) {
      final args =
          routeData.argsAs<RouteA02Args>(orElse: () => const RouteA02Args());
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.PageA02(key: args.key),
      );
    },
    RouteC.name: (routeData) {
      final args =
          routeData.argsAs<RouteCArgs>(orElse: () => const RouteCArgs());
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.PageC(key: args.key),
      );
    },
    SettingRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SettingPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i9.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i10.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i9.PageInfo<LoginRouteArgs> page =
      _i9.PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i10.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.MainTabbedPage]
class MainTabbedRoute extends _i9.PageRouteInfo<void> {
  const MainTabbedRoute({List<_i9.PageRouteInfo>? children})
      : super(
          MainTabbedRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainTabbedRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i3.NewsPage]
class NewsRoute extends _i9.PageRouteInfo<NewsRouteArgs> {
  NewsRoute({
    _i11.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          NewsRoute.name,
          args: NewsRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'NewsRoute';

  static const _i9.PageInfo<NewsRouteArgs> page =
      _i9.PageInfo<NewsRouteArgs>(name);
}

class NewsRouteArgs {
  const NewsRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'NewsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.PageA]
class RouteA extends _i9.PageRouteInfo<void> {
  const RouteA({List<_i9.PageRouteInfo>? children})
      : super(
          RouteA.name,
          initialChildren: children,
        );

  static const String name = 'RouteA';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i5.PageA01]
class RouteA01 extends _i9.PageRouteInfo<RouteA01Args> {
  RouteA01({
    _i10.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          RouteA01.name,
          args: RouteA01Args(key: key),
          initialChildren: children,
        );

  static const String name = 'RouteA01';

  static const _i9.PageInfo<RouteA01Args> page =
      _i9.PageInfo<RouteA01Args>(name);
}

class RouteA01Args {
  const RouteA01Args({this.key});

  final _i10.Key? key;

  @override
  String toString() {
    return 'RouteA01Args{key: $key}';
  }
}

/// generated route for
/// [_i6.PageA02]
class RouteA02 extends _i9.PageRouteInfo<RouteA02Args> {
  RouteA02({
    _i10.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          RouteA02.name,
          args: RouteA02Args(key: key),
          initialChildren: children,
        );

  static const String name = 'RouteA02';

  static const _i9.PageInfo<RouteA02Args> page =
      _i9.PageInfo<RouteA02Args>(name);
}

class RouteA02Args {
  const RouteA02Args({this.key});

  final _i10.Key? key;

  @override
  String toString() {
    return 'RouteA02Args{key: $key}';
  }
}

/// generated route for
/// [_i7.PageC]
class RouteC extends _i9.PageRouteInfo<RouteCArgs> {
  RouteC({
    _i10.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          RouteC.name,
          args: RouteCArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'RouteC';

  static const _i9.PageInfo<RouteCArgs> page = _i9.PageInfo<RouteCArgs>(name);
}

class RouteCArgs {
  const RouteCArgs({this.key});

  final _i10.Key? key;

  @override
  String toString() {
    return 'RouteCArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.SettingPage]
class SettingRoute extends _i9.PageRouteInfo<void> {
  const SettingRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}
