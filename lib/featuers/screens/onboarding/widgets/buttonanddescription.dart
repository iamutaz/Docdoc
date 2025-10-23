import 'package:docdoc/core/theming/colorsmabager.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buttonanddescription() {
  return Padding(
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
            backgroundColor: WidgetStateProperty.all(Colorsmanager.mainBlue),
            minimumSize: WidgetStateProperty.all(Size(double.infinity, 500.h)),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            ),
          ),
          child: Text("Get started", style: TextStyles.white16semibold),
        ),
      ],
    ),
  );
}
