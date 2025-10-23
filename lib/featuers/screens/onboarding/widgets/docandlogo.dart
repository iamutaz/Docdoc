import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

Widget docAndLogo() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SvgPicture.asset("assets/svgs/docdoc_logo.svg"),
      SizedBox(width: 5.w),
      Text("Docdoc", style: TextStyles.black24bold),
    ],
  );
}
