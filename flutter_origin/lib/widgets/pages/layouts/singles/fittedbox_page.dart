import 'package:flutter/material.dart';

class FittedBoxPage extends StatelessWidget {
  const FittedBoxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,

            //====================================================================================================
            // FITTED BOX : 
            // - CHỨC NĂNG: Để hiển thị một widget con với kích thước được thay đổi để phù hợp với widget cha.
            // - THUỘC TÍNH : 
            // + fit: 
            //   -> BoxFit.contain: Nếu child > widget => child thu nhỏ lại fit widget.
            //   -> BoxFit.cover : Nếu child < widget => child phóng to fit widget.
            //   -> BoxFit.fitHeight : Nếu child.Height < widget.Height => child.Height phóng to fit widget.
            //   -> BoxFit.fitWidth : Nếu child.Width < widget.Width => child.Width phóng to fit widget.
            //   -> BoxFit.scaleDown : Nếu widget con lớn hơn widget cha thì nó sẽ được thu nhỏ lại để vừa với widget cha.
            //====================================================================================================

            child: const FittedBox(
              fit: BoxFit.contain,
              child: Text(
                'Hello World! Hello World! Hello World!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
