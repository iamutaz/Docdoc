import 'package:docdoc/core/Routing/routes.dart';
import 'package:docdoc/core/helpers/extension.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

RichText haveAccountwidget(BuildContext context) {
  return RichText(
    text: TextSpan(
      children: [
        TextSpan(
          text: "already have an account?",
          style: TextStyles.darkblue12reqular,
        ),
        TextSpan(
          text: " Log in",
          style: TextStyles.blue12semibold,
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              context.pushReplacementName(Routes.logIn);
            },
        ),
      ],
    ),
  );
}
