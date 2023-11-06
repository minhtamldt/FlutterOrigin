import 'package:flutter/material.dart';
import 'package:flutter_origin/app.dart';
import 'package:flutter_origin/injection_container.dart';

void main() async {
  await initializeDependencies();
  runApp(const OriginApp());
}
