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
            alignment: Alignment.center, // Bắt buộc set, nếu không size của child sẽ full parent.
            color: Colors.blue,
            child: AspectRatio(

              //====================================================================================================
              // ASPECT RATIO :
              // - CHỨC NĂNG :
              //   + Hỗ trợ chỉ định tỉ lệ giữa width và height của child widget.
              // - THUỘC TÍNH :
              //   + aspectRatio : Tỉ lệ giữa width và height của child widget.
              // - LƯU Ý :
              //   + Child không thể set width height nếu wrap bởi AspectRatio
              //   + Giá trị cao hơn luôn fill parent. Ví dụ
              //     + aspectRatio : 1/2 => height sẽ fill parent, width sẽ là 1/2 chiều cao
              //====================================================================================================

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
