import 'package:flutter/material.dart';

class SizeBoxPage extends StatelessWidget {
  const SizeBoxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SizeBox Demo'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is some text'),
            //========================================================================
            // SIZEBOX :
            // - CHỨC NĂNG: Cho phép bạn chỉ định kích thước của widget con
            // - THUỘC TÍNH : 
            //  + width: xác định chiều rộng của widget con
            //  + height: xác định chiều cao của widget con
            //  + child: xác định widget con
            //========================================================================
            SizedBox(height: 50), // Add a SizedBox widget with a height of 20 pixels
            Text('This is some more text'),
          ],
        ),
      ),
    );
  }
}
