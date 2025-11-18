import 'package:docdoc/core/DI/get_it.dart';
import 'package:docdoc/core/Routing/generateroute.dart';
import 'package:docdoc/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  setupGetit();
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Home(generateroute: Generateroute());
  }
}
