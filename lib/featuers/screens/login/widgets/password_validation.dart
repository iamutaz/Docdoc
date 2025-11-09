import 'package:docdoc/core/theming/colorsmanager.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordValidation extends StatelessWidget {
  bool hasLowerCase, hasUpperCase, hasSpecailCharacter, hasNumber, hasMinLength;
  PasswordValidation({
    super.key,
    required this.hasLowerCase,
    required this.hasMinLength,
    required this.hasNumber,
    required this.hasSpecailCharacter,
    required this.hasUpperCase,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidtionRow("At least 1 lowecase letter", hasLowerCase),
        buildValidtionRow("At least 1 uppercase letter", hasUpperCase),
        buildValidtionRow("At least 1 specail letter", hasSpecailCharacter),
        buildValidtionRow("At least 1 number", hasNumber),
        buildValidtionRow("At least 8 character long", hasMinLength),
      ],
    );
  }
}

Widget buildValidtionRow(String text, bool status) {
  return Row(
    children: [
      CircleAvatar(radius: 2.5, backgroundColor: Colorsmanager.gray),
      SizedBox(width: 10.w),
      Text(
        text,
        style: TextStyles.darkblue12reqular.copyWith(
          color: status ? Colorsmanager.gray : Colors.red,
          fontWeight: status ? FontWeight.normal : FontWeight.bold,
        ),
      ),
    ],
  );
}
