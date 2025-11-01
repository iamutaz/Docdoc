import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';

RichText haveaccountwidget() {
  return RichText(
    text: TextSpan(
      children: [
        TextSpan(
          text: "don't have an account yet?",
          style: TextStyles.lightblack12reqular,
        ),
        TextSpan(text: " Sign Up", style: TextStyles.blue12semibold),
      ],
    ),
  );
}
