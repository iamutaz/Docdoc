import 'package:docdoc/featuers/screens/Home/widget/speciality_listview_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialityListView extends StatelessWidget {
  const SpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(left: index == 0 ? 0 : 25.w),
            child: SpecialityListviewItem(
              imageName: "assets/svgs/home_general_doctor.svg",
              data: "general",
            ),
          );
        },
        itemCount: 8,
      ),
    );
  }
}
