import 'package:docdoc/core/Routing/routes.dart';
import 'package:docdoc/core/helpers/extension.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:docdoc/featuers/screens/login/data/logic/cubit/login_cubit_cubit.dart';
import 'package:docdoc/featuers/screens/login/data/logic/cubit/login_cubit_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListner extends StatelessWidget {
  const LoginBlocListner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubitCubit, LoginCubitState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Failure,
      listener: (context, state) {
        state.whenOrNull(
          loading: () => showDialog(
            context: context,
            builder: (context) {
              print("loading listner");
              return Center(child: CircularProgressIndicator());
            },
          ),
          success: (data) {
            print("success in bloc listner");
            context.pop();
            context.pushNamed(Routes.homeScreen);
          },
          failure: (error) {
            print("fail in bloc listner");
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
