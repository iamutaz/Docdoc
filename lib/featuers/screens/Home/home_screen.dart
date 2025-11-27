import 'package:docdoc/featuers/screens/Home/widget/doctor_speciality.dart';
import 'package:docdoc/featuers/screens/Home/widget/doctor_with_background.dart';
import 'package:docdoc/featuers/screens/Home/widget/home_top_bar.dart';
import 'package:docdoc/featuers/screens/Home/widget/recommendation_doctor.dart';
import 'package:docdoc/featuers/screens/Home/widget/recommendation_list_view.dart';
import 'package:docdoc/featuers/screens/Home/widget/speciality_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: Column(
            children: [
              HomeTopBar(),
              SizedBox(height: 18.h),
              DoctorWithBackground(),
              SizedBox(height: 24.h),
              DoctorSpeciality(),
              SizedBox(height: 8.h),
              SpecialityListView(),
              SizedBox(height: 24.h),
              RecommendationDoctor(),
              SizedBox(height: 12.h),
              RecommendationListView(),
            ],
          ),
        ),
      ),
    );
  }
}
