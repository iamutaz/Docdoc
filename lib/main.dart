import 'package:docdoc/core/DI/get_it.dart';
import 'package:docdoc/core/Routing/generateroute.dart';
import 'package:docdoc/featuers/home.dart';
import 'package:flutter/material.dart';

void main() {
  setupGetit();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Home(generateroute: Generateroute());
  }
}
