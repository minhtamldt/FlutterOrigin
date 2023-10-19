import 'package:flutter/material.dart';

class CenterPage extends StatelessWidget {
  const CenterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          color: Colors.green,
          child: Container(
            color: Colors.blue,

            //====================================================================================================
            // CENTER :
            // - CHỨC NĂNG : Làm cho child được canh giữa cả chiều ngang và chiều dọc
            // - THUỘC TÍNH :
            //   + widthFactor : Tỷ lệ giữa width của Center và width của Parent của Center
            //   + heightFactor: Tỷ lệ giữa height của Center và height của Parent của Center
            // - LƯU Ý :
            //   + height/widthFactor => Chỉ có tác dụng khi Parent không có width height cố định 
            // - VÍ DỤ : 
            //   + Align đang wrap Container màu đỏ, Container này nằm ở vị trí Bottom-Right.
            //====================================================================================================

            child: Center(
              heightFactor: 1.5, // Container Blue sẽ có width là 1.5 lần width của Center
              widthFactor: 2, // Container Blue sẽ có height là 2 lần height của Center
              child: Container(
                width: 200,
                height: 200,
                color: Colors.red)),
          )),
      ),
    );
  }
}
