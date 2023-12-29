import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SubFirstPage extends StatefulWidget {
  final String agrumentData;
  const SubFirstPage({
    super.key,
    @PathParam('agrumentData') required this.agrumentData,
  });

  @override
  State<SubFirstPage> createState() => _SubFirstPageState();
}

class _SubFirstPageState extends State<SubFirstPage> {
  late String _timeInit = "";
  @override
  void initState() {
    super.initState();
    _timeInit = DateTime.now().toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _createAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _createAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: const Text("SubFirstPage"),
    );
  }

  _buildBody() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            _timeInit,
          ),
          Text(
            widget.agrumentData,
          ),
        ],
      ),
    );
  }
}
