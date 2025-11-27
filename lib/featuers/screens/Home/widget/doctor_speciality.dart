import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';

class DoctorSpeciality extends StatelessWidget {
  const DoctorSpeciality({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Doctor Speciality", style: TextStyles.black18semibold),
          Text("See All", style: TextStyles.mainblue12reqular),
        ],
      ),
    );
  }
}
