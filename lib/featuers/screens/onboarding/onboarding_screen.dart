import 'package:docdoc/core/Routing/routes.dart';
import 'package:docdoc/core/helpers/extension.dart';
import 'package:docdoc/featuers/screens/onboarding/widgets/buttonanddescription.dart';
import 'package:docdoc/featuers/screens/onboarding/widgets/doctorandbackground.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:docdoc/featuers/screens/onboarding/widgets/docandlogo.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 40.h),
                child: docAndLogo(),
              ),
              SizedBox(height: 30.h),
              doctorandbackground(),
              Buttonanddescription(),
            ],
          ),
        ),
      ),
    );
  }
}
