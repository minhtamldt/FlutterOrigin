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
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
    NaviTabSixRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NaviTabSixPage(),
      );
    },
    SubFirstRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<SubFirstRouteArgs>(
          orElse: () => SubFirstRouteArgs(
              agrumentData: pathParams.getString('agrumentData')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SubFirstPage(
          key: args.key,
          agrumentData: args.agrumentData,
        ),
      );
    },
    TabFiveRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TabFivePage(),
      );
    },
    TabFourRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TabFourPage(),
      );
    },
    TabOneRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TabOnePage(),
      );
    },
    TabSixRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TabSixPage(),
      );
    },
    TabThreeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TabThreePage(),
      );
    },
    TabTwoRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TabTwoPage(),
      );
    },
    TabbedHomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TabbedHomePage(),
      );
    },
  };
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NaviTabSixPage]
class NaviTabSixRoute extends PageRouteInfo<void> {
  const NaviTabSixRoute({List<PageRouteInfo>? children})
      : super(
          NaviTabSixRoute.name,
          initialChildren: children,
        );

  static const String name = 'NaviTabSixRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SubFirstPage]
class SubFirstRoute extends PageRouteInfo<SubFirstRouteArgs> {
  SubFirstRoute({
    Key? key,
    required String agrumentData,
    List<PageRouteInfo>? children,
  }) : super(
          SubFirstRoute.name,
          args: SubFirstRouteArgs(
            key: key,
            agrumentData: agrumentData,
          ),
          rawPathParams: {'agrumentData': agrumentData},
          initialChildren: children,
        );

  static const String name = 'SubFirstRoute';

  static const PageInfo<SubFirstRouteArgs> page =
      PageInfo<SubFirstRouteArgs>(name);
}

class SubFirstRouteArgs {
  const SubFirstRouteArgs({
    this.key,
    required this.agrumentData,
  });

  final Key? key;

  final String agrumentData;

  @override
  String toString() {
    return 'SubFirstRouteArgs{key: $key, agrumentData: $agrumentData}';
  }
}

/// generated route for
/// [TabFivePage]
class TabFiveRoute extends PageRouteInfo<void> {
  const TabFiveRoute({List<PageRouteInfo>? children})
      : super(
          TabFiveRoute.name,
          initialChildren: children,
        );

  static const String name = 'TabFiveRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TabFourPage]
class TabFourRoute extends PageRouteInfo<void> {
  const TabFourRoute({List<PageRouteInfo>? children})
      : super(
          TabFourRoute.name,
          initialChildren: children,
        );

  static const String name = 'TabFourRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TabOnePage]
class TabOneRoute extends PageRouteInfo<void> {
  const TabOneRoute({List<PageRouteInfo>? children})
      : super(
          TabOneRoute.name,
          initialChildren: children,
        );

  static const String name = 'TabOneRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TabSixPage]
class TabSixRoute extends PageRouteInfo<void> {
  const TabSixRoute({List<PageRouteInfo>? children})
      : super(
          TabSixRoute.name,
          initialChildren: children,
        );

  static const String name = 'TabSixRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TabThreePage]
class TabThreeRoute extends PageRouteInfo<void> {
  const TabThreeRoute({List<PageRouteInfo>? children})
      : super(
          TabThreeRoute.name,
          initialChildren: children,
        );

  static const String name = 'TabThreeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TabTwoPage]
class TabTwoRoute extends PageRouteInfo<void> {
  const TabTwoRoute({List<PageRouteInfo>? children})
      : super(
          TabTwoRoute.name,
          initialChildren: children,
        );

  static const String name = 'TabTwoRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TabbedHomePage]
class TabbedHomeRoute extends PageRouteInfo<void> {
  const TabbedHomeRoute({List<PageRouteInfo>? children})
      : super(
          TabbedHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'TabbedHomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
