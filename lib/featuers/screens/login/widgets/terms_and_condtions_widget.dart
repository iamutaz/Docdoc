import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';

RichText termsandcondtionswidget() {
  return RichText(
    textAlign: TextAlign.center,
    text: TextSpan(
      style: TextStyle(height: 1.6),
      children: <TextSpan>[
        TextSpan(
          text: "By logging, you agree to our ",
          style: TextStyles.morelightgray15reqular,
        ),
        TextSpan(
          text: " Terms & Conditions ",
          style: TextStyles.darkblue12reqular,
        ),
        TextSpan(text: " and ", style: TextStyles.morelightgray15reqular),
        TextSpan(text: "PrivacyPolicy.", style: TextStyles.darkblue12reqular),
      ],
    ),
  );
}
