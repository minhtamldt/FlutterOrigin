import 'package:flutter/material.dart';
import 'package:flutter_origin/widgets/base_stateful_widget.dart';
import 'package:flutter_origin/widgets/pages/navigators/sub/first_page.dart';
import 'package:flutter_origin/widgets/pages/navigators/sub/second_page.dart';
import 'package:flutter_origin/widgets/pages/navigators/sub/thrid_page.dart';

class DefaultTabControllerPage extends BaseStatefulWidget {
  DefaultTabControllerPage({super.key});

  @override
  State<DefaultTabControllerPage> createState() =>
      _DefaultTabControllerPageState();
}

class _DefaultTabControllerPageState extends State<DefaultTabControllerPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: AppBar(
                bottom: const TabBar(tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ])),
          ),
          body: TabBarView(children: [FirstPage(), SecondPage(), ThridPage()]),
          floatingActionButton: Builder(
            builder: (context) => FloatingActionButton(
              onPressed: () {
                final snackBar = SnackBar(
                  content: Text(
                      'DefaultTabController TabIndex: ${DefaultTabController.of(context).index}'),
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () {
                      // Some code to undo the change.
                    },
                  ),
                );
                // Find the ScaffoldMessenger in the widget tree
                // and use it to show a SnackBar.
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
            ),
          ),
        ));
  }
}
