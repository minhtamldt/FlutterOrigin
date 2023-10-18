import 'package:flutter/material.dart';

class CenterPage extends StatelessWidget {
  const CenterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Mô tả : 
      // - Widget hỗ trợ canh giữa widget con, canh giữa cả chiều ngang và chiều dọc 
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          color: Colors.green,
          child: Container(
            color: Colors.blue,
            child: Center(
              heightFactor: 1.5, //Height Parent của Center sẽ là 1.5 lần height của Center
              widthFactor: 1.5, //Width Parent của Center sẽ là 2 lần width của Center
              // => Chỉ có tác dụng khi Parent không có width height cố định
              child: Container(
                width: 200,
                height: 200,
                color: Colors.red)),
          )),
      ),
    );
  }
}
