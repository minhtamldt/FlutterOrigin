import 'package:auto_route/auto_route.dart';
import 'package:flutter_origin/config/routers/app_router.gr.dart';
import 'package:flutter_origin/core/constants/router_contants.dart';

//flutter packages pub run build_runner build
@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            path: RouterContants.loginPage,
            page: LoginRoute.page,
            initial: true),
        AutoRoute(
          path: RouterContants.forgotPasswordPage,
          page: ForgotPasswordRoute.page,
        ),
        AutoRoute(
          path: RouterContants.signUpPage,
          page: SignUpRoute.page,
        ),
        AutoRoute(
          path: RouterContants.tabMainPage,
          page: TabMainRoute.page,
          children: [
            AutoRoute(
                initial: true,
                path: RouterContants.routerHomePage,
                page: RouterHomeRoute.page,
                children: [
                  AutoRoute(
                    initial: true,
                    path: RouterContants.homePage,
                    page: HomeRoute.page,
                  ),
                  AutoRoute(
                    path: RouterContants.newsDetailPage,
                    page: NewsDetailRoute.page,
                  ),
                  AutoRoute(
                    path: RouterContants.notificactionPage,
                    page: NotificationRoute.page,
                  ),
                ]),
            AutoRoute(
              path: RouterContants.searchPage,
              page: SearchRoute.page,
            ),
            AutoRoute(
              path: RouterContants.bookmarkPage,
              page: BookmarkRoute.page,
            ),
            AutoRoute(
              path: RouterContants.settingPage,
              page: SettingRoute.page,
            ),
          ],
        ),
      ];
}
