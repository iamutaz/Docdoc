import 'package:docdoc/core/DI/get_it.dart';
import 'package:docdoc/core/Routing/routes.dart';
import 'package:docdoc/featuers/screens/Home/home_screen.dart';
import 'package:docdoc/featuers/screens/Sign_in/data/logic/cubit/signin_cubit.dart';
import 'package:docdoc/featuers/screens/Sign_in/sign_in.dart';
import 'package:docdoc/featuers/screens/login/data/logic/cubit/login_cubit_cubit.dart';
import 'package:docdoc/featuers/screens/login/login.dart';
import 'package:docdoc/featuers/screens/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Generateroute {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case Routes.logIn:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubitCubit>(),
            child: Login(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case Routes.signIn:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SigninCubit>(),
            child: SignIn(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(body: Center(child: Text("no screen "))),
        );
    }
  }
}
