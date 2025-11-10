import 'package:docdoc/core/theming/styles.dart';
import 'package:docdoc/core/widgets/AppTextButton.dart';
import 'package:docdoc/featuers/screens/login/data/logic/cubit/login_cubit_cubit.dart';
import 'package:docdoc/featuers/screens/login/data/models/loginrequestbody.dart';
import 'package:docdoc/featuers/screens/login/widgets/email_and_password.dart';
import 'package:docdoc/featuers/screens/login/widgets/have_account_widget.dart';
import 'package:docdoc/featuers/screens/login/widgets/login_bloc_listner.dart';
import 'package:docdoc/featuers/screens/login/widgets/terms_and_condtions_widget.dart';
import 'package:docdoc/featuers/screens/login/widgets/welcomeback.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isobscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 40.0.h, horizontal: 30.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WelcomebackWidget(),
                SizedBox(height: 36.h),
                Column(
                  children: [
                    EmailAndPassword(),
                    SizedBox(height: 25.h),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        "Forget password",
                        style: TextStyles.blue12reqular,
                      ),
                    ),
                    SizedBox(height: 32.h),
                    AppTextButton(
                      textStyle: TextStyles.white16semibold,
                      textButton: "Login",
                      onpressed: () {
                        validateThenLogin(context);
                      },
                    ),
                    SizedBox(height: 50.h),
                    termsandcondtionswidget(),
                    SizedBox(height: 30.h),
                    haveaccountwidget(),
                    LoginBlocListner(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void validateThenLogin(BuildContext context) {
  if (context.read<LoginCubitCubit>().formkey.currentState!.validate()) {
    context.read<LoginCubitCubit>().emitLoginState(
      Loginrequestbody(
        email: context.read<LoginCubitCubit>().emailController.text,
        password: context.read<LoginCubitCubit>().passController.text,
      ),
    );
  }
}
