import 'package:docdoc/core/theming/styles.dart';
import 'package:docdoc/core/widgets/AppTextButton.dart';
import 'package:docdoc/featuers/screens/Sign_in/data/logic/cubit/signin_cubit.dart';
import 'package:docdoc/featuers/screens/Sign_in/data/models/sign_in_request_body.dart';
import 'package:docdoc/featuers/screens/Sign_in/widgets/already_have_account.dart';
import 'package:docdoc/featuers/screens/Sign_in/widgets/sign_in_bloc_listner.dart';
import 'package:docdoc/featuers/screens/Sign_in/widgets/sign_in_form.dart';
import 'package:docdoc/featuers/screens/login/widgets/terms_and_condtions_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 31.w),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Create Account", style: TextStyles.blue24bold),
                SizedBox(height: 8.h),
                Text(
                  "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
                  style: TextStyles.gray14reqular,
                ),
                SizedBox(height: 18.h),
                SignInForm(),
                SizedBox(height: 30),
                AppTextButton(
                  onpressed: () {
                    validateThenSignIn(context);
                  },
                  textButton: "Create Account",
                  textStyle: TextStyles.white16semibold,
                ),
                SizedBox(height: 40.h),
                termsandcondtionswidget(),
                SizedBox(height: 24),
                Align(
                  alignment: Alignment.center,
                  child: haveAccountwidget(context),
                ),
                SigninBlocListner(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void validateThenSignIn(BuildContext context) {
  if (context.read<SigninCubit>().keyform.currentState!.validate()) {
    context.read<SigninCubit>().emitSignInState(
      SignInRequestBody(
        email: context.read<SigninCubit>().emailcontroller.text,
        gender: context.read<SigninCubit>().gendercontroller.text,
        name: context.read<SigninCubit>().namecontroller.text,
        password: context.read<SigninCubit>().passwordcontroller.text,
        passwordConfirmation: context
            .read<SigninCubit>()
            .passwordconfirmationcontroller
            .text,
        phone: context.read<SigninCubit>().numbercontroller.text,
      ),
    );
  }
}
