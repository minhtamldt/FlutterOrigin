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
          // Align Widget :
          // - Canh chỉnh vị trí của widget con so với widget cha.
          // - Như code bên dưới :
          //   + ContainerRed đang nằm góc phải bên dưới ContainerBlue
          child: Align(
            // Alignment.topLeft
            // Alignment.topCenter
            // Alignment.topRight
            // Alignment.centerLeft
            // Alignment.center
            // Alignment.centerRight
            // Alignment.bottomLeft
            // Alignment.bottomCenter
            // Alignment.bottomRight
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
