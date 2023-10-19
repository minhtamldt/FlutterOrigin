import 'package:flutter/material.dart';

class CustomSingleChildLayoutPage extends StatelessWidget {
  const CustomSingleChildLayoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        //====================================================================================================
        // CUSTOM SINGLE CHILD LAYOUT :
        // - CHỨC NĂNG : Tạo một single custom widget
        // - THUỘC TÍNH :
        //  + delegate : SingleChildLayoutDelegate, hỗ trợ tính toán vị trí và kích thước của child widget
        //  + child : Widget, child widget
        //====================================================================================================
        child: CustomSingleChildLayout(
          delegate: _MyCustomLayoutDelegate(),
          child: Container(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}

//====================================================================================================
// CUSTOM SINGLE CHILD LAYOUT DELEGATE :
// - CHỨC NĂNG : Hỗ trợ tính toán vị trí và kích thước của child widget
// - PHƯƠNG THỨC :
//   + getConstraintsForChild : Trả về giới hạn kích thước của child widget
//   + getPositionForChild : Trả về vị trí của child widget
//   + shouldRelayout : Xác định xem delegate có thay đổi không
//====================================================================================================
class _MyCustomLayoutDelegate extends SingleChildLayoutDelegate {
  
  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    return BoxConstraints.tight(const Size(100, 100));
  }

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    return Offset(size.width / 2 - childSize.width / 2,
        size.height / 2 - childSize.height / 2);
  }

  @override
  bool shouldRelayout(_MyCustomLayoutDelegate oldDelegate) {
    return false;
  }
}