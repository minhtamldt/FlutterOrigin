// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:flutter_origin/presentations/auto_gouters/page_a.dart' as _i1;
import 'package:flutter_origin/presentations/auto_gouters/page_b.dart' as _i2;
import 'package:flutter_origin/presentations/auto_gouters/page_c.dart' as _i3;
import 'package:flutter_origin/presentations/auto_gouters/page_d.dart' as _i4;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    RouteA.name: (routeData) {
      final args =
          routeData.argsAs<RouteAArgs>(orElse: () => const RouteAArgs());
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.PageA(key: args.key),
      );
    },
    RouteB.name: (routeData) {
      final args =
          routeData.argsAs<RouteBArgs>(orElse: () => const RouteBArgs());
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.PageB(key: args.key),
      );
    },
    RouteC.name: (routeData) {
      final args =
          routeData.argsAs<RouteCArgs>(orElse: () => const RouteCArgs());
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.PageC(key: args.key),
      );
    },
    RouteD.name: (routeData) {
      final args =
          routeData.argsAs<RouteDArgs>(orElse: () => const RouteDArgs());
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.PageD(key: args.key),
      );
    },
  };
}

/// generated route for
/// [_i1.PageA]
class RouteA extends _i5.PageRouteInfo<RouteAArgs> {
  RouteA({
    _i6.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          RouteA.name,
          args: RouteAArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'RouteA';

  static const _i5.PageInfo<RouteAArgs> page = _i5.PageInfo<RouteAArgs>(name);
}

class RouteAArgs {
  const RouteAArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'RouteAArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.PageB]
class RouteB extends _i5.PageRouteInfo<RouteBArgs> {
  RouteB({
    _i6.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          RouteB.name,
          args: RouteBArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'RouteB';

  static const _i5.PageInfo<RouteBArgs> page = _i5.PageInfo<RouteBArgs>(name);
}

class RouteBArgs {
  const RouteBArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'RouteBArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.PageC]
class RouteC extends _i5.PageRouteInfo<RouteCArgs> {
  RouteC({
    _i6.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          RouteC.name,
          args: RouteCArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'RouteC';

  static const _i5.PageInfo<RouteCArgs> page = _i5.PageInfo<RouteCArgs>(name);
}

class RouteCArgs {
  const RouteCArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'RouteCArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.PageD]
class RouteD extends _i5.PageRouteInfo<RouteDArgs> {
  RouteD({
    _i6.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          RouteD.name,
          args: RouteDArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'RouteD';

  static const _i5.PageInfo<RouteDArgs> page = _i5.PageInfo<RouteDArgs>(name);
}

class RouteDArgs {
  const RouteDArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'RouteDArgs{key: $key}';
  }
}
