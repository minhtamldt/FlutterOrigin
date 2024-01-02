import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_origin/config/auto_router/guards/can_pusp_page.dart';
import 'package:flutter_origin/config/auto_router/path_router.dart';
import 'package:flutter_origin/presentation/auto_route_page/navi_pages/page_a.dart';
import 'package:flutter_origin/presentation/auto_route_page/navi_pages/page_b1.dart';
import 'package:flutter_origin/presentation/auto_route_page/navi_pages/page_b2.dart';
import 'package:flutter_origin/presentation/auto_route_page/navi_pages/page_b.dart';
import 'package:flutter_origin/presentation/auto_route_page/navi_pages/page_c.dart';
import 'package:flutter_origin/presentation/auto_route_page/navi_pages/page_d.dart';
import 'package:flutter_origin/presentation/auto_route_page/navi_pages/page_e.dart';
part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  //Key used to acess paramters
  static const String argumentsKeys = "argumentsKeys";
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          path: PathRouter.pageA,
          page: RouteA.page,
          guards: [
            CanPushPage(),
          ],
        ),
        AutoRoute(
          path: PathRouter.pageB,
          page: RouteB.page,
          children: [
            AutoRoute(
              initial: true,
              path: PathRouter.pageB1,
              page: RouteB1.page,
            ),
            AutoRoute(
              path: PathRouter.pageB2,
              page: RouteB2.page,
            ),
          ],
        ),
        AutoRoute(
          path: PathRouter.pageC,
          page: RouteC.page,
        ),
        AutoRoute(
          path: PathRouter.pageD,
          page: RouteD.page,
        ),
        AutoRoute(
          path: PathRouter.pageE,
          page: RouteE.page,
        ),
      ];
}
