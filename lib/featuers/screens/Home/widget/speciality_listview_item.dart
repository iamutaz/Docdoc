import 'package:docdoc/core/theming/colorsmanager.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SpecialityListviewItem extends StatelessWidget {
  final String imageName;
  final String data;

  const SpecialityListviewItem({
    super.key,
    required this.imageName,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 34.r,
          backgroundColor: Colorsmanager.lightblue,
          child: SvgPicture.asset(imageName, height: 35, width: 35),
        ),
        SizedBox(height: 5.h),
        Text(data, style: TextStyles.lightblack12reqular),
      ],
    );
  }
}
