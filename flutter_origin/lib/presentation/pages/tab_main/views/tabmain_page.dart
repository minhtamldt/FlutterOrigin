import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_origin/config/routers/app_router.gr.dart';
import 'package:flutter_origin/core/base/widgets/page_widget.dart';
import 'package:flutter_origin/presentation/pages/tab_main/bloc/tabmain_page_bloc.dart';

@RoutePage()
class TabMainPage extends StatefulWidget {
  const TabMainPage({super.key});

  @override
  State<TabMainPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<TabMainPage> {
  @override
  Widget build(BuildContext context) {
    return PageWidget<TabMainPageBloc>(
        useSafeArea: false,
        child: AutoTabsScaffold(
          routes: const [
            RouterHomeRoute(),
            SearchRoute(),
            BookmarkRoute(),
            SettingRoute(),
          ],
          bottomNavigationBuilder: (context, tabsRouter) {
            return Theme(
              data: ThemeData(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                currentIndex: tabsRouter.activeIndex,
                selectedItemColor: Colors.blue,
                onTap: tabsRouter.setActiveIndex,
                items: [
                  BottomNavigationBarItem(
                      activeIcon: Image.asset(
                        'assets/images/ic_home_black.png',
                        width: 24,
                        height: 24,
                      ),
                      icon: Image.asset(
                        'assets/images/ic_home.png',
                        width: 24,
                        height: 24,
                      ),
                      label: ""),
                  BottomNavigationBarItem(
                      activeIcon: Image.asset(
                        'assets/images/ic_search_black.png',
                        width: 24,
                        height: 24,
                      ),
                      icon: Image.asset(
                        'assets/images/ic_search.png',
                        width: 24,
                        height: 24,
                      ),
                      label: ""),
                  BottomNavigationBarItem(
                      activeIcon: Image.asset(
                        'assets/images/ic_bookmark_black.png',
                        width: 24,
                        height: 24,
                      ),
                      icon: Image.asset(
                        'assets/images/ic_bookmark.png',
                        width: 24,
                        height: 24,
                      ),
                      label: ""),
                  BottomNavigationBarItem(
                      activeIcon: Image.asset(
                        'assets/images/ic_setting_black.png',
                        width: 24,
                        height: 24,
                      ),
                      icon: Image.asset(
                        'assets/images/ic_setting.png',
                        width: 24,
                        height: 24,
                      ),
                      label: ""),
                ],
              ),
            );
          },
        ));
  }
}
