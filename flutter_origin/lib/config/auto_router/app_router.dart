import 'package:auto_route/auto_route.dart';
import 'package:flutter_origin/presentation/auto_router_pages/login_page.dart';
import 'package:flutter_origin/presentation/auto_router_pages/tabbed_pages/child_tab_five_page.dart';
import 'package:flutter_origin/presentation/auto_router_pages/tabbed_pages/child_tab_four_page.dart';
import 'package:flutter_origin/presentation/auto_router_pages/tabbed_pages/child_tab_one_page.dart';
import 'package:flutter_origin/presentation/auto_router_pages/tabbed_pages/child_tab_six_page.dart';
import 'package:flutter_origin/presentation/auto_router_pages/tabbed_pages/child_tab_three_page.dart';
import 'package:flutter_origin/presentation/auto_router_pages/tabbed_pages/child_tab_two_page.dart';
import 'package:flutter_origin/presentation/auto_router_pages/tabbed_pages/main_tab_page.dart';
import 'package:flutter_origin/presentation/auto_router_pages/tabbed_pages/nest_navigation/inside_navi_page.dart';
import 'package:flutter_origin/presentation/auto_router_pages/tabbed_pages/nest_navigation/outside_navi_page.dart';
part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: "/loginPage",
          initial: true,
          page: LoginRoute.page,
        ),
        AutoRoute(
          path: "/mainTabPage",
          page: MainTabRoute.page,
          children: [
            AutoRoute(
              path: "childTabOnePage",
              page: ChildTabOneRoute.page,
            ),
            AutoRoute(
              path: "childTabTwoRoute",
              page: ChildTabTwoRoute.page,
            ),
            AutoRoute(
              path: "childTabThreeRoute",
              page: ChildTabThreeRoute.page,
            ),
            AutoRoute(
              path: "childTabFourRoute",
              page: ChildTabFourRoute.page,
            ),
            AutoRoute(
              path: "childTabFourRoute",
              page: ChildTabFourRoute.page,
            ),
            AutoRoute(
              path: "chidTabFiveRoute",
              page: ChidTabFiveRoute.page,
            ),
            AutoRoute(
                initial: true,
                path: "wrapChildTabSixRoute",
                page: WrapChildTabSixRoute.page,
                children: [
                  AutoRoute(
                    initial: true,
                    path: "childTabSixRoute",
                    page: ChildTabSixRoute.page,
                  ),
                  AutoRoute(
                    path: "inSideNaviRoute",
                    page: InsideNaviRoute.page,
                  ),
                ]),
          ],
        ),
        AutoRoute(
          path: "/outSideNaviRoute",
          page: OutsideNaviRoute.page,
        ),
      ];
}
