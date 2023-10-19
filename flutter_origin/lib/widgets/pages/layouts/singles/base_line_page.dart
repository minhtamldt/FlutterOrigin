import 'package:flutter/material.dart';

//TBD
class BaseLinePage extends StatelessWidget {
  const BaseLinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.purple,

            //====================================================================================================
            // BASELINE :
            // - CHỨC NĂNG : Hỗ trợ canh chỉnh child theo đường cơ sở của parent.
            // - THUỘC TÍNH :
            //   + baseline : Giá trị cơ sở của child
            //   + baselineType : Loại cơ sở của child
            //====================================================================================================
            
            child: Baseline(
              // 0: ContainerYellow sẽ nằm trên ContainerPurple, Bottom của ContainerYellow sẽ nằm trên Top của ContainerPurple
              // baseline > 0 đẩy xuống dưới
              // baseline < 0 đẩy lên trên
              baseline: 0, 
              baselineType: TextBaseline.alphabetic,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.yellow,
              ),
            )
            
          ),
        ),
      ),
    );
  }
}
