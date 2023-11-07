import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_origin/config/router/app_router.gr.dart';
import 'package:flutter_origin/core/constants/router_contanstants.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      drawerEnableOpenDragGesture: false,
      routes: const [
        NewsRoute(),
        SettingRoute(),
      ],
      transitionBuilder: (context, child, animation) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
      appBarBuilder: (context, tabsRouter) {
        return AppBar(
          leading: Builder(builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          }),
        );
      },
      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: (index) {
            // here we switch between tabs
            tabsRouter.setActiveIndex(index);
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: "News"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ],
        );
      },
      drawer: Drawer(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        child: Container(
          decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.white,
                  Colors.white,
                  Colors.white,
                  Colors.white,
                  Colors.blue
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )),
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.asset("assets/images/flutter.png")),
              ),
              ListTile(
                minLeadingWidth: 0,
                leading: const Icon(Icons.settings),
                title: const Text('Setting'),
                onTap: () {
                  AutoRouter.of(context)
                      .navigateNamed(RouterConstants.settingPage);
                  Scaffold.of(context).closeDrawer();
                },
              ),
              Builder(builder: (context) {
                return ListTile(
                  minLeadingWidth: 0,
                  leading: const Icon(Icons.newspaper),
                  title: const Text('News'),
                  onTap: () {
                    // AutoRouter.of(context)
                    //     .navigateNamed(RouterConstants.newsPage);
                    Scaffold.of(context).closeDrawer();
                  },
                );
              }),
              ListTile(
                minLeadingWidth: 0,
                leading: const Icon(Icons.logout),
                title: const Text('Logout'),
                onTap: () {
                  context.router.replaceNamed(RouterConstants.loginPage);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
