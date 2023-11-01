import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_origin/presentations/navigators/routes/app_routes.gr.dart';
import 'package:flutter_origin/presentations/navigators/routes/route_constants.dart';

@RoutePage()
class MainTabbedPage extends StatelessWidget {
  const MainTabbedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      drawerEnableOpenDragGesture: false,
      routes: [
        const RouteA(),
        RouteB(),
        RouteC(),
      ],
      transitionBuilder: (context, child, animation) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
      appBarBuilder: (context, tabsRouter) {
        return AppBar(
          title: const Text("Main Tabbed Page"),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              // Scaffold.of(context).openDrawer();
            },
          ),
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
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Page A"),
            BottomNavigationBarItem(
                icon: Icon(Icons.newspaper), label: "Page B"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Page C"),
          ],
        );
      },
      drawer: Drawer(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Setting'),
              onTap: () {
                AutoRouter.of(context).pushNamed(RouteConstants.setting);
              },
            ),
            Builder(builder: (context) {
              return ListTile(
                title: const Text('Selected Tab C'),
                onTap: () {
                  AutoRouter.of(context).navigateNamed(RouteConstants.pageC);
                  Scaffold.of(context).closeDrawer();
                },
              );
            }),
            ListTile(
              title: const Text('Logout'),
              onTap: () {
                context.router.replaceNamed(RouteConstants.loginPage);
              },
            ),
          ],
        ),
      ),
    );
  }
}
