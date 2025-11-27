import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendationDoctor extends StatelessWidget {
  const RecommendationDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: Row(
        children: [
          Text("Recommendation Doctor", style: TextStyles.black18semibold),
          Spacer(),
          Text("See All", style: TextStyles.mainblue12reqular),
        ],
      ),
    );
  }
}
