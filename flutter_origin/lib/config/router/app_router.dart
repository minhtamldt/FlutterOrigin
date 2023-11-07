import 'package:auto_route/auto_route.dart';
import 'package:flutter_origin/config/router/app_router.gr.dart';
import 'package:flutter_origin/core/constants/router_contanstants.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          path: RouterConstants.loginPage,
          page: LoginRoute.page,
        ),
        AutoRoute(
          path: RouterConstants.homeTabbedPage,
          page: HomeRoute.page,
          children: [
            AutoRoute(
              path: RouterConstants.tabNews,
              page: TabNews.page,
              children: [
                AutoRoute(
                  initial: true,
                  path: RouterConstants.newsPage,
                  page: NewsRoute.page,
                ),
                AutoRoute(
                  path: RouterConstants.detailNewsPage,
                  page: NewsRoute.page,
                ),
              ],
            ),
            AutoRoute(
              path: RouterConstants.settingPage,
              page: SettingRoute.page,
            ),
          ],
        ),
        // AutoRoute(
        //   path: RouteConstants.setting,
        //   page: SettingRoute.page,
        // ),
      ];
}
