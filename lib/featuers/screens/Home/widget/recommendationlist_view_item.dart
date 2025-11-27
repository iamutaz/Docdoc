import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendationlistViewItem extends StatelessWidget {
  final String imagename;
  final String doctorname;
  const RecommendationlistViewItem({
    super.key,
    required this.imagename,
    required this.doctorname,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: SizedBox(
            height: 100.h,
            width: 100.w,
            child: Image.asset(imagename),
          ),
        ),
        SizedBox(width: 14.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(doctorname, style: TextStyles.darkblue16bold),
            SizedBox(height: 10.h),
            Text("general  | ---------", style: TextStyles.gray12reqular),
          ],
        ),
      ],
    );
  }
}
