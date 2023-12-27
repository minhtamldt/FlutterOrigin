import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_origin/config/auto_router/app_router.dart';

@RoutePage()
class MainTabPage extends StatefulWidget {
  const MainTabPage({super.key});

  @override
  State<MainTabPage> createState() => _MainTabbedPageState();
}

class _MainTabbedPageState extends State<MainTabPage> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      animationDuration: const Duration(
          milliseconds: 0), // Turn off face animation when navigate tab
      routes: const [
        ChildTabOneRoute(),
        ChildTabTwoRoute(),
        ChildTabThreeRoute(),
        ChildTabFourRoute(),
        ChidTabFiveRoute(),
        ChildTabSixRoute()
      ],
      bottomNavigationBuilder: _createBottomNavigation,
    );
  }

  Widget _createBottomNavigation(BuildContext context, TabsRouter tabsRouter) {
    return BottomNavigationBar(
      type: BottomNavigationBarType
          .fixed, //turn off scale item animtation when selected.
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black38,
      unselectedLabelStyle: const TextStyle(color: Colors.black),
      selectedLabelStyle: const TextStyle(color: Colors.red),
      currentIndex: tabsRouter.activeIndex,
      onTap: tabsRouter.setActiveIndex,
      items: const [
        BottomNavigationBarItem(
          label: "One",
          icon: Icon(
            Icons.one_k,
          ),
        ),
        BottomNavigationBarItem(
          label: "Two",
          icon: Icon(
            Icons.two_k,
          ),
        ),
        BottomNavigationBarItem(
          label: "Three",
          icon: Icon(
            Icons.three_k,
          ),
        ),
        BottomNavigationBarItem(
          label: "Four",
          icon: Icon(
            Icons.four_k,
          ),
        ),
        BottomNavigationBarItem(
          label: "Five",
          icon: Icon(
            Icons.five_k,
          ),
        ),
        BottomNavigationBarItem(
          label: "Six",
          icon: Icon(
            Icons.six_k,
          ),
        ),
      ],
    );
  }
}
