import 'package:docdoc/core/theming/colorsmabager.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                padding: EdgeInsets.only(top: 50.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/svgs/docdoc_logo.svg"),
                    SizedBox(width: 5.w),
                    Text("Docdoc", style: TextStyles.black24bold),
                  ],
                ),
              ),
              SizedBox(height: 800.h),
              Stack(
                children: [
                  SvgPicture.asset(
                    "assets/svgs/onborading_logo_with_offset.svg",
                  ),
                  Container(
                    width: double.infinity,
                    child: Image.asset("assets/images/onboarding_doctor.png"),
                    foregroundDecoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.white, Colors.white.withOpacity(0)],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        stops: [0.16, 0.5],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 400.h,
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Best Doctor Appointment App",
                            style: TextStyles.mainblue32bold,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                child: Column(
                  children: [
                    Text(
                      "manage and schedule all of your medical appoinments easily with Docdoc to get a new experience",
                      textAlign: TextAlign.center,
                      style: TextStyles.gray12reqular,
                    ),
                    SizedBox(height: 300.h),
                    TextButton(
                      onPressed: () {},

                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                          Colorsmanager.mainBlue,
                        ),
                        minimumSize: WidgetStateProperty.all(
                          Size(double.infinity, 500.h),
                        ),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                      child: Text(
                        "Get started",
                        style: TextStyles.white16semibold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
