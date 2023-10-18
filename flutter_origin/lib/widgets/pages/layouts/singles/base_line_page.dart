import 'package:flutter/material.dart';

//TBD
class BaseLinePage extends StatelessWidget {
  const BaseLinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Baseline Demo'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Baseline(
              baseline: 50,
              baselineType: TextBaseline.alphabetic,
              child: Text(
                'Hello',
                style: TextStyle(fontSize: 30),
              ),
            ),
            SizedBox(height: 20),
            Baseline(
              baseline: 50,
              baselineType: TextBaseline.alphabetic,
              child: Text(
                'World',
                style: TextStyle(fontSize: 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
