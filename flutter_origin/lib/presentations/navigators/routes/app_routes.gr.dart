// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;
import 'package:flutter_origin/presentations/auto_gouters/main_tabbed_page.dart'
    as _i2;
import 'package:flutter_origin/presentations/auto_gouters/page_a.dart' as _i3;
import 'package:flutter_origin/presentations/auto_gouters/page_a01.dart' as _i4;
import 'package:flutter_origin/presentations/auto_gouters/page_a02.dart' as _i5;
import 'package:flutter_origin/presentations/auto_gouters/page_b.dart' as _i6;
import 'package:flutter_origin/presentations/auto_gouters/page_c.dart' as _i7;
import 'package:flutter_origin/presentations/auto_gouters/setting_page.dart'
    as _i8;
import 'package:flutter_origin/presentations/pages/login/views/login_page.dart'
    as _i1;

abstract class $AppRouter extends _i9.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.LoginPage(),
      );
    },
    MainTabbedRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.MainTabbedPage(),
      );
    },
    RouteA.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.PageA(),
      );
    },
    RouteA01.name: (routeData) {
      final args =
          routeData.argsAs<RouteA01Args>(orElse: () => const RouteA01Args());
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.PageA01(key: args.key),
      );
    },
    RouteA02.name: (routeData) {
      final args =
          routeData.argsAs<RouteA02Args>(orElse: () => const RouteA02Args());
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.PageA02(key: args.key),
      );
    },
    RouteB.name: (routeData) {
      final args =
          routeData.argsAs<RouteBArgs>(orElse: () => const RouteBArgs());
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.PageB(key: args.key),
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
class LoginRoute extends _i9.PageRouteInfo<void> {
  const LoginRoute({List<_i9.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
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
/// [_i3.PageA]
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
/// [_i4.PageA01]
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
/// [_i5.PageA02]
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
/// [_i6.PageB]
class RouteB extends _i9.PageRouteInfo<RouteBArgs> {
  RouteB({
    _i10.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          RouteB.name,
          args: RouteBArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'RouteB';

  static const _i9.PageInfo<RouteBArgs> page = _i9.PageInfo<RouteBArgs>(name);
}

class RouteBArgs {
  const RouteBArgs({this.key});

  final _i10.Key? key;

  @override
  String toString() {
    return 'RouteBArgs{key: $key}';
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
