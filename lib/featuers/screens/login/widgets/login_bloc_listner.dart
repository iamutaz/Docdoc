import 'package:docdoc/core/Routing/routes.dart';
import 'package:docdoc/core/helpers/extension.dart';
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
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () => showDialog(
            context: context,
            builder: (context) {
              return Center(child: CircularProgressIndicator());
            },
          ),
          success: (data) {
            context.pop();
            context.pushNamed(Routes.homeScreen);
          },
          failure: (error) {
            setupError(context, error);
          },
        );
      },
      child: SizedBox.shrink(),
    );
  }
}

void setupError(BuildContext context, String massage) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(content: Text(massage), icon: Icon(Icons.error));
    },
  );
}
