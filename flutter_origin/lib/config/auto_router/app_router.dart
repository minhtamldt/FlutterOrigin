import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_origin/config/auto_router/path_router.dart';
import 'package:flutter_origin/presentation/auto_router_pages/login_page.dart';
import 'package:flutter_origin/presentation/auto_router_pages/tabbed_pages/nest_navigation/sub_first_page.dart';
import 'package:flutter_origin/presentation/auto_router_pages/tabbed_pages/tabbed_home_page.dart';
import 'package:flutter_origin/presentation/auto_router_pages/tabbed_pages/navi_tab_six_page.dart';
import 'package:flutter_origin/presentation/auto_router_pages/tabbed_pages/tab_five_page.dart';
import 'package:flutter_origin/presentation/auto_router_pages/tabbed_pages/tab_four_page.dart';
import 'package:flutter_origin/presentation/auto_router_pages/tabbed_pages/tab_one_page.dart';
import 'package:flutter_origin/presentation/auto_router_pages/tabbed_pages/tab_six_page.dart';
import 'package:flutter_origin/presentation/auto_router_pages/tabbed_pages/tab_three_page.dart';
import 'package:flutter_origin/presentation/auto_router_pages/tabbed_pages/tab_two_page.dart';
part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            path: PathRouter.loginPage,
            initial: true,
            page: LoginRoute.page,
            type: const RouteType.material()),
        AutoRoute(
          path: PathRouter.tabbedHomePage,
          page: TabbedHomeRoute.page,
          children: [
            AutoRoute(
              path: PathRouter.tabOnePage,
              page: TabOneRoute.page,
            ),
            AutoRoute(
              path: PathRouter.tabTwoPage,
              page: TabTwoRoute.page,
            ),
            AutoRoute(
              path: PathRouter.tabThreePage,
              page: TabThreeRoute.page,
            ),
            AutoRoute(
              path: PathRouter.tabFourPage,
              page: TabFourRoute.page,
            ),
            AutoRoute(
              path: PathRouter.tabFivePage,
              page: TabFiveRoute.page,
            ),
            AutoRoute(
                initial: true,
                path: PathRouter.naviTabSixPage,
                page: NaviTabSixRoute.page,
                children: [
                  AutoRoute(
                    initial: true,
                    path: PathRouter.tabSixPage,
                    page: TabSixRoute.page,
                  ),
                ]),
          ],
        ),
        AutoRoute(
          maintainState: false,
          path: PathRouter.subFirstPage,
          page: SubFirstRoute.page,
        ),
      ];
}
