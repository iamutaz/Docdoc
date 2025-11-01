import 'package:docdoc/core/Routing/routes.dart';
import 'package:docdoc/core/helpers/extension.dart';
import 'package:docdoc/core/theming/colorsmanager.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Buttonanddescription extends StatelessWidget {
  const Buttonanddescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0.w),
      child: Column(
        children: [
          Text(
            "manage and schedule all of your medical appoinments easily with Docdoc to get a new experience",
            textAlign: TextAlign.center,
            style: TextStyles.gray12reqular,
          ),
          SizedBox(height: 30.h),
          TextButton(
            onPressed: () {
              context.pushNamed(Routes.logIn);
            },

            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colorsmanager.mainBlue),
              minimumSize: WidgetStateProperty.all(Size(double.infinity, 50.h)),
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
}
