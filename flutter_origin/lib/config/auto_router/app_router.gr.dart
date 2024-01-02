// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    RouteA.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<RouteAArgs>(
          orElse: () => RouteAArgs(paramters: queryParams.get('arguments')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PageA(
          key: args.key,
          paramters: args.paramters,
        ),
      );
    },
    RouteB.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PageB(),
      );
    },
    RouteB1.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PageB1(),
      );
    },
    RouteB2.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PageB2(),
      );
    },
    RouteC.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<RouteCArgs>(
          orElse: () => RouteCArgs(paramters: queryParams.get('arguments')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PageC(
          key: args.key,
          paramters: args.paramters,
        ),
      );
    },
    RouteD.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<RouteDArgs>(
          orElse: () => RouteDArgs(paramters: queryParams.get('arguments')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PageD(
          key: args.key,
          paramters: args.paramters,
        ),
      );
    },
    RouteE.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<RouteEArgs>(
          orElse: () => RouteEArgs(paramters: queryParams.get('arguments')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PageE(
          key: args.key,
          paramters: args.paramters,
        ),
      );
    },
  };
}

/// generated route for
/// [PageA]
class RouteA extends PageRouteInfo<RouteAArgs> {
  RouteA({
    Key? key,
    Map<String, dynamic>? paramters,
    List<PageRouteInfo>? children,
  }) : super(
          RouteA.name,
          args: RouteAArgs(
            key: key,
            paramters: paramters,
          ),
          rawQueryParams: {'arguments': paramters},
          initialChildren: children,
        );

  static const String name = 'RouteA';

  static const PageInfo<RouteAArgs> page = PageInfo<RouteAArgs>(name);
}

class RouteAArgs {
  const RouteAArgs({
    this.key,
    this.paramters,
  });

  final Key? key;

  final Map<String, dynamic>? paramters;

  @override
  String toString() {
    return 'RouteAArgs{key: $key, paramters: $paramters}';
  }
}

/// generated route for
/// [PageB]
class RouteB extends PageRouteInfo<void> {
  const RouteB({List<PageRouteInfo>? children})
      : super(
          RouteB.name,
          initialChildren: children,
        );

  static const String name = 'RouteB';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PageB1]
class RouteB1 extends PageRouteInfo<void> {
  const RouteB1({List<PageRouteInfo>? children})
      : super(
          RouteB1.name,
          initialChildren: children,
        );

  static const String name = 'RouteB1';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PageB2]
class RouteB2 extends PageRouteInfo<void> {
  const RouteB2({List<PageRouteInfo>? children})
      : super(
          RouteB2.name,
          initialChildren: children,
        );

  static const String name = 'RouteB2';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PageC]
class RouteC extends PageRouteInfo<RouteCArgs> {
  RouteC({
    Key? key,
    Map<String, dynamic>? paramters,
    List<PageRouteInfo>? children,
  }) : super(
          RouteC.name,
          args: RouteCArgs(
            key: key,
            paramters: paramters,
          ),
          rawQueryParams: {'arguments': paramters},
          initialChildren: children,
        );

  static const String name = 'RouteC';

  static const PageInfo<RouteCArgs> page = PageInfo<RouteCArgs>(name);
}

class RouteCArgs {
  const RouteCArgs({
    this.key,
    this.paramters,
  });

  final Key? key;

  final Map<String, dynamic>? paramters;

  @override
  String toString() {
    return 'RouteCArgs{key: $key, paramters: $paramters}';
  }
}

/// generated route for
/// [PageD]
class RouteD extends PageRouteInfo<RouteDArgs> {
  RouteD({
    Key? key,
    Map<String, dynamic>? paramters,
    List<PageRouteInfo>? children,
  }) : super(
          RouteD.name,
          args: RouteDArgs(
            key: key,
            paramters: paramters,
          ),
          rawQueryParams: {'arguments': paramters},
          initialChildren: children,
        );

  static const String name = 'RouteD';

  static const PageInfo<RouteDArgs> page = PageInfo<RouteDArgs>(name);
}

class RouteDArgs {
  const RouteDArgs({
    this.key,
    this.paramters,
  });

  final Key? key;

  final Map<String, dynamic>? paramters;

  @override
  String toString() {
    return 'RouteDArgs{key: $key, paramters: $paramters}';
  }
}

/// generated route for
/// [PageE]
class RouteE extends PageRouteInfo<RouteEArgs> {
  RouteE({
    Key? key,
    Map<String, dynamic>? paramters,
    List<PageRouteInfo>? children,
  }) : super(
          RouteE.name,
          args: RouteEArgs(
            key: key,
            paramters: paramters,
          ),
          rawQueryParams: {'arguments': paramters},
          initialChildren: children,
        );

  static const String name = 'RouteE';

  static const PageInfo<RouteEArgs> page = PageInfo<RouteEArgs>(name);
}

class RouteEArgs {
  const RouteEArgs({
    this.key,
    this.paramters,
  });

  final Key? key;

  final Map<String, dynamic>? paramters;

  @override
  String toString() {
    return 'RouteEArgs{key: $key, paramters: $paramters}';
  }
}
