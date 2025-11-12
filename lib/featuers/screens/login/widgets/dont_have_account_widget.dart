import 'package:docdoc/core/Routing/routes.dart';
import 'package:docdoc/core/helpers/extension.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

RichText donthaveaccountwidget(BuildContext context) {
  return RichText(
    text: TextSpan(
      children: [
        TextSpan(
          text: "don't have an account yet?",
          style: TextStyles.darkblue12reqular,
        ),
        TextSpan(
          text: " Sign Up",
          style: TextStyles.blue12semibold,
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              context.pushReplacementName(Routes.signIn);
            },
        ),
      ],
    ),
  );
}
