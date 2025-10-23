import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

Widget doctorandbackground() {
  return Stack(
    children: [
      SvgPicture.asset("assets/svgs/onborading_logo_with_offset.svg"),
      Container(
        width: double.infinity,

        foregroundDecoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.white.withOpacity(0)],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: [0.16, 0.5],
          ),
        ),
        child: Image.asset("assets/images/onboarding_doctor.png"),
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
  );
}
