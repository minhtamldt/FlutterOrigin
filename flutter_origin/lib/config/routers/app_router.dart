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
      ];
}
