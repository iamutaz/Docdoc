import 'package:docdoc/core/Routing/generateroute.dart';
import 'package:docdoc/core/Routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatelessWidget {
  final Generateroute generateroute;
  const Home({super.key, required this.generateroute});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 8120),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onboarding,
        onGenerateRoute: generateroute.generateRoute,
      ),
    );
  }
}
