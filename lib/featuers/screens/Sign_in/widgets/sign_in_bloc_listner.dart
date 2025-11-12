import 'package:docdoc/core/Routing/routes.dart';
import 'package:docdoc/core/helpers/extension.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:docdoc/featuers/screens/Sign_in/data/logic/cubit/signin_cubit.dart';
import 'package:docdoc/featuers/screens/Sign_in/data/logic/cubit/signin_state.dart';
import 'package:docdoc/featuers/screens/login/data/logic/cubit/login_cubit_cubit.dart';
import 'package:docdoc/featuers/screens/login/data/logic/cubit/login_cubit_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SigninBlocListner extends StatelessWidget {
  const SigninBlocListner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SigninCubit, SigninState>(
      listenWhen: (previous, current) =>
          current is SignupLoading ||
          current is SignupSuccess ||
          current is SignupFailure,
      listener: (context, state) {
        state.whenOrNull(
          signuploading: () => showDialog(
            context: context,
            builder: (context) {
              return Center(child: CircularProgressIndicator());
            },
          ),
          signupsuccess: (data) {
            context.pop();
            context.pushNamed(Routes.homeScreen);
          },
          signupfailure: (error) {
            setupErrorState(context, error);
          },
        );
      },
      child: SizedBox.shrink(),
    );
  }
}

void setupErrorState(BuildContext context, String error) {
  context.pop();
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      icon: const Icon(Icons.error, color: Colors.red, size: 32),
      content: Text(error, style: TextStyles.darkblue12reqular),
      actions: [
        TextButton(
          onPressed: () {
            context.pop();
          },
          child: Text('Got it', style: TextStyles.blue12semibold),
        ),
      ],
    ),
  );
}
