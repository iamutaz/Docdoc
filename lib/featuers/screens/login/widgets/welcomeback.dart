import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomebackWidget extends StatelessWidget {
  const WelcomebackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Welcome Back", style: TextStyles.blue24bold),
        SizedBox(height: 10.h),
        Text(
          "We're excited to have you back, can't wait to see what you've been up to since you last logged in",
          style: TextStyles.gray15reqular,
        ),
      ],
    );
  }
}
