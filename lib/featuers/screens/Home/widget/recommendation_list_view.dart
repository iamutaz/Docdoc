import 'package:docdoc/featuers/screens/Home/widget/recommendationlist_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendationListView extends StatelessWidget {
  const RecommendationListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0.h),
            child: RecommendationlistViewItem(
              imagename: 'assets/images/Lmaooo.png',
              doctorname: 'abo shoge',
            ),
          );
        },
        itemCount: 5,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
