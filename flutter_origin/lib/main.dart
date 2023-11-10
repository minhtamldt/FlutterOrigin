import 'package:flutter/material.dart';
import 'package:flutter_origin/app.dart';
import 'package:flutter_origin/injection_register.dart';

void main() async {
  await InjectionRegister.initializeDependencies();
  runApp(const OriginApp());
}


