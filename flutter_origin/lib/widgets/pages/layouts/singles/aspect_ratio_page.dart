import 'package:flutter/material.dart';

class AspectRatioPage extends StatelessWidget {
  const AspectRatioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.green,
          child: Container(
            width: 300,
            height: 300,
            alignment: Alignment.center, //Bắt buộc set, nếu không AspectRatio sẽ full parent của nó.
            color: Colors.blue,
            child: AspectRatio(
              // AspectRatio Widget :
              // - Hỗ trợ chỉ định tỉ lệ giữa chiều rộng và chiều cao của widget con.
              // - Child không thể set width height nếu wrap bởi AspectRatio
              // - Giá trị cao hơn luôn fill parent. Ví dụ
              //  + aspectRatio : 1/2 => chiều cao sẽ fill parent, chiều rộng sẽ là 1/2 chiều cao
              aspectRatio: 1 / 2,
              child: Container(
                color: Colors.red,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
