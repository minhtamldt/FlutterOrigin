import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: 200,  // 1. Chỉ định chiều rộng của Container
          height: 200, // 2. Chỉ định chiều cao của Container
          color: Colors.blue, // 3. Chỉ định màu sắc của Container
          alignment: Alignment.centerRight, //4. Chỉ định vị trí của widget con. 
          child: Container(  //5. Chỉ định widget con của Container
            color: Colors.red,
            padding: const EdgeInsets.all(10), //6. Chỉ định Padding cho Container
            child: Container(
              
              // BoxConstraints
              // 1. LERP : Linearly Interpolate
              // - BoxConstraints.lerp(BoxConstraints a, BoxConstraints b, double t)
              // - a: Ràng buộc đầu tiên.
              // - b: Ràng buộc thứ hai.
              // - t: Hệ số (thường từ 0.0 đến 1.0) xác định mức độ trộn giữa hai ràng buộc. 
              // - Nếu t là 0.0, kết quả sẽ giống a, và nếu t là 1.0, kết quả sẽ giống b. 
              // - Giá trị t nằm trong khoảng 0.0 đến 1.0 sẽ tạo ra ràng buộc trung gian.
              // 2. LOOSE :
              // - BoxConstraints.loose(Size size)
              // - size : chỉ định MaxWidth và MaxHeight
              // 3. TIGHT :
              // - BoxConstraints.tight(Size size)
              // - Xác định kích thước chính xác
              // 3. TIGHT FOR :
              // - BoxConstraints.tightFor(doule? width, double? height)
              // - Giống TIGHT, nhưng width và height lúc này là optional, nếu không truyền kích thước của nó sẽ dựa vào content.
              // 4. TIGHT FOR FINITE (TBD)
              // - BoxConstraints.tightForFinite({double? width, double? height})
              // - chỉ định kích thước cố định
              
              constraints: BoxConstraints.tight(const Size(100, 100)),// 8. Chỉ định contraints cho Container
              color: Colors.yellow,
              margin: const EdgeInsets.all(20), //7. Chỉ định Margin cho Container, nó làm tăng kích thước của widget
            ),
          ),
        ),
      ),
    );
  }
}
