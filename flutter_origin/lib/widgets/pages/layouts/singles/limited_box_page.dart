import 'package:flutter/material.dart';

class LimitedBoxPage extends StatelessWidget {
  const LimitedBoxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //========================================================================
      // TBD ??
      //========================================================================
      body: LimitedBox(
        maxWidth: 50.0,
        maxHeight: 50.0,
        child: Image.network('https://upload.wikimedia.org/wikipedia/en/b/bd/Doraemon_character.png'),
      ),
    );
  }
}
