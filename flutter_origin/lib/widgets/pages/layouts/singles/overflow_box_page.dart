import 'package:flutter/material.dart';

class OverflowBoxPage extends StatelessWidget {
  const OverflowBoxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OverflowBox Demo'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.yellow,

          //========================================================================
          // OVERFLOWBOX : 
          // - CHỨC NĂNG: Cho phép widget có thể hiển thị nội dùng vượt ra ngoài kích thước của nó
          // - THUỘC TÍNH :
          //  + alignment: xác định vị trí của widget con trong OverflowBox
          //  + minWidth: xác định chiều rộng tối thiểu của widget con
          //  + maxWidth: xác định chiều rộng tối đa của widget con
          //========================================================================
          child: OverflowBox(
            maxWidth: 300,
            maxHeight: 300,
            alignment: Alignment.topLeft,
            child: Opacity(
              opacity: 0.5,
              child: Container(
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
