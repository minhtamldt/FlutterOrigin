import 'package:auto_route/auto_route.dart';
import 'package:flutter_origin/presentations/navigators/routes/app_routes.gr.dart';
import 'package:flutter_origin/presentations/navigators/routes/route_constants.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: RouteConstants.pageA,
          page: RouteA.page,
        ),
        AutoRoute(
          path: RouteConstants.pageB,
          page: RouteB.page,
        ),
        AutoRoute(
          path: RouteConstants.pageC,
          page: RouteC.page,
        ),
        AutoRoute(
          path: RouteConstants.pageD,
          page: RouteD.page,
        ),
      ];
}
