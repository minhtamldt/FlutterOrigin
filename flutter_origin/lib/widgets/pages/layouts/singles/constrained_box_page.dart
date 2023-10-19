import 'package:flutter/material.dart';

class ConstrainedBoxPage extends StatelessWidget {
  const ConstrainedBoxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ConstrainedBox Demo'),
      ),
      body: Center(

        //====================================================================================================
        // CONSTRANIED BOX :
        // - CHỨC NĂNG :
        //    + Hỗ trợ giới hạn kích thước của widget con 
        // - THUỘC TÍNH :
        //    + constraints : BoxConstraints , giới hạn kích thước của widget con
        //====================================================================================================
        
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            minWidth: 100,
            minHeight: 100,
            maxWidth: 200,
            maxHeight: 200,
          ),
          child: Container(
            color: Colors.blue,
            width: 600,
            height: 150,
            child: const Center(
              child: Text(
                'ConstrainedBox',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
