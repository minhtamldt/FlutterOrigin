import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

        //====================================================================================================
        // CONTAINER :
        // - CHỨC NĂNG :
        //    + Một widget có thể chứa một widget con, hỗ trợ một số thuộc tính để canh chỉnh layout.
        // - THUỘC TÍNH :
        //    + alignment : AlignmentGeometry , chỉ định vị trí của widget con trong Container
        //    + color : Color , chỉ định màu sắc của Container
        //    + constraints : BoxConstraints , chỉ định ràng buộc của Container
        //    + decoration : Decoration , chỉ định hình dạng của Container
        //    + foregroundDecoration : Decoration , chỉ định hình dạng của Container
        //    + margin : EdgeInsetsGeometry , chỉ định margin của Container
        //    + padding : EdgeInsetsGeometry , chỉ định padding của Container
        //    + transform : Matrix4 , chỉ định transform của Container
        //    + width : double , chỉ định chiều rộng của Container  
        //    + height : double , chỉ định chiều cao của Container
        //====================================================================================================

        child: Container(
          width: 200,  
          height: 200, 
          color: Colors.blue, 
          alignment: Alignment.centerRight, 
          child: Container(  
            color: Colors.red,

            //====================================================================================================
            // EDGEINSETS: 
            // - CHỨC NĂNG : Đối tượng dùng để set padding, margin cho widget
            // - PHƯƠNG THỨC :
            //  + all : set padding, margin cho 4 cạnh
            //  + only : set padding, margin cho 1 hoặc nhiều cạnh
            //  + symmetric : set padding, margin cho 2 cạnh đối xứng
            //  + fromLTRB : set padding, margin cho 4 cạnh
            //  + zero : set padding, margin cho 4 cạnh bằng 0
            //  + infinity : set padding, margin cho 4 cạnh bằng double.infinity
            //  + lerp : tạo ra một EdgeInsets mới bằng cách lấy trung bình có trọng số của hai EdgeInsets đã cho
            //  + copyWith : tạo ra một EdgeInsets mới bằng cách sao chép mọi giá trị từ một EdgeInsets đã cho
            //  + toString : trả về String biểu diễn cho EdgeInsets
            //  + resolve : trả về EdgeInsets mới với các giá trị đã được giải quyết thành các giá trị cụ thể
            //  + add : trả về EdgeInsets mới với các giá trị đã được thêm vào các giá trị của EdgeInsets đã cho
            //  + subtract : trả về EdgeInsets mới với các giá trị đã được trừ đi từ các giá trị của EdgeInsets đã cho
            //  + clamp : trả về EdgeInsets mới với các giá trị đã được giới hạn trong khoảng từ EdgeInsets đã cho
            //  + inflate : trả về EdgeInsets mới với các giá trị đã được phóng to với một hệ số đã cho
            //  + deflate : trả về EdgeInsets mới với các giá trị đã được thu nhỏ với một hệ số đã cho
            //  + round : trả về EdgeInsets mới với các giá trị đã được làm tròn thành số nguyên gần nhất
            //====================================================================================================

            padding: const EdgeInsets.all(10), 
            child: Container(

              //====================================================================================================
              // BOXCONSTRAINTS :
              // - CHỨC NĂNG :
              //   + Hỗ trợ giới hạn kích thước của widget con
              // - THUỘC TÍNH :
              //   + minWidth : double , giới hạn chiều rộng tối thiểu của widget con
              //   + maxWidth : double , giới hạn chiều rộng tối đa của widget con
              //   + minHeight : double , giới hạn chiều cao tối thiểu của widget con
              //   + maxHeight : double , giới hạn chiều cao tối đa của widget con 
              // - STATIC PHƯƠNG THỨC :
              // + tight : Xác định kích thước chính xác
              // + tightFor : Giống TIGHT, nhưng width và height lúc này là optional, nếu không truyền kích thước của nó sẽ dựa vào content.
              // + loose : chỉ định MaxWidth và MaxHeight
              // + lerp : Linearly Interpolate
              //   + a: Ràng buộc đầu tiên.
              //   + b: Ràng buộc thứ hai.
              //   + t: Hệ số (thường từ 0.0 đến 1.0) xác định mức độ trộn giữa hai ràng buộc. 
              //   + Nếu t là 0.0, kết quả sẽ giống a, và nếu t là 1.0, kết quả sẽ giống b. 
              //   + Giá trị t nằm trong khoảng 0.0 đến 1.0 sẽ tạo ra ràng buộc trung gian.
              //====================================================================================================

              constraints: BoxConstraints.loose(const Size(100, 100)),
              color: Colors.yellow,
              margin: const EdgeInsets.all(20), 
            ),
          ),
        ),
      ),
    );
  }
}
