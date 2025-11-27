import 'package:docdoc/core/theming/colorsmanager.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi omar ",
              style: TextStyles.darkblue18bold,
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 2.h),
            Text("how are u today", style: TextStyles.morelightergray11regular),
          ],
        ),
        Spacer(),
        SizedBox(
          height: 48,
          width: 48,
          child: CircleAvatar(
            radius: 48,
            backgroundColor: Colorsmanager.notibackcolor,
            child: SvgPicture.asset("assets/svgs/notification_Button.svg"),
          ),
        ),
      ],
    );
  }
}
