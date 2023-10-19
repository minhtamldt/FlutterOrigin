import 'package:flutter/material.dart';

class AlignPage extends StatelessWidget {
  const AlignPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.blue,

          //====================================================================================================
          // ALIGN:
          // - CHỨC NĂNG: Canh chỉnh vị trí của sub widget.
          // - THUỘC TÍNH:
          //   + alignment: Vị trí của sub widget trong parent widget.
          // - VÍ DỤ: 
          //   + Align đang wrap Container màu đỏ, Container này nằm ở vị trí Bottom-Right.
          //====================================================================================================

          child: Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
