import 'package:flutter/material.dart';

class OffstagePage extends StatefulWidget {
  const OffstagePage({super.key});

  @override
  OffstagePageState createState() => OffstagePageState();
}

class OffstagePageState extends State<OffstagePage> {
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Offstage Widget Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //========================================================================
            // OFFSTAGE
            // - CHỨC NĂNG: ẩn hiển widget, mà không xoá nó khỏi tree.
            // - THUỘC TÍNH : 
            //   - offstage: xác định widget có được hiển thị hay không.
            //========================================================================
            Offstage(
              offstage: _isVisible,
              child: const Text(
                'This text is hidden',
                style: TextStyle(fontSize: 24),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isVisible = !_isVisible;
                });
              },
              child: Text(_isVisible ? 'Hide Text' : 'Show Text'),
            ),
          ],
        ),
      ),
    );
  }
}
