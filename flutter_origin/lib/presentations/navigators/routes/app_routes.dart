import 'package:auto_route/auto_route.dart';
import 'package:flutter_origin/presentations/navigators/routes/app_routes.gr.dart';
import 'package:flutter_origin/presentations/navigators/routes/route_constants.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          path: RouteConstants.loginPage,
          page: LoginRoute.page,
        ),
        AutoRoute(
          path: RouteConstants.mainTabbedPage,
          page: MainTabbedRoute.page,
          children: [
            AutoRoute(
              initial: true,
              path: RouteConstants.pageA,
              page: RouteA.page,
              children: [
                AutoRoute(
                  initial: true,
                  path: RouteConstants.pageA01,
                  page: RouteA01.page,
                ),
                AutoRoute(
                  path: RouteConstants.pageA02,
                  page: RouteA02.page,
                ),
              ],
            ),
            AutoRoute(
              path: RouteConstants.news,
              page: NewsRoute.page,
            ),
            AutoRoute(
              path: RouteConstants.pageC,
              page: RouteC.page,
            ),
          ],
        ),
        AutoRoute(
          path: RouteConstants.setting,
          page: SettingRoute.page,
        ),
      ];
}
