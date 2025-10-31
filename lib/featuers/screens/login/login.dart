import 'package:docdoc/featuers/screens/login/widgets/welcomeback.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 40.0.h, horizontal: 30.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [WelcomebackWidget()],
            ),
          ),
        ),
      ),
    );
  }
}
