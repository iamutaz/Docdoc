import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorWithBackground extends StatelessWidget {
  const DoctorWithBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 165.h,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/home_background.png"),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0.w, vertical: 15.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Book and\nschedule with\nnearest doctor",
                    style: TextStyles.white18medium,
                  ),
                  SizedBox(height: 20.h),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Find Nearby",
                        style: TextStyles.mainblue12reqular,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 16,
            top: 7,
            child: Image.asset(
              "assets/images/home_doctor.png",
              height: 190.h,
              width: 150.w,
            ),
          ),
        ],
      ),
    );
  }
}
