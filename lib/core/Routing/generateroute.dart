import 'package:docdoc/core/Routing/routes.dart';
import 'package:docdoc/featuers/screens/login.dart';
import 'package:docdoc/featuers/screens/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

class Generateroute {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case Routes.logIn:
        return MaterialPageRoute(builder: (_) => Login());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(body: Center(child: Text("no screen "))),
        );
    }
  }
}
