import 'package:docdoc/core/theming/styles.dart';
import 'package:docdoc/core/widgets/AppTextButton.dart';
import 'package:docdoc/featuers/screens/login/widgets/apptextformfield.dart';
import 'package:docdoc/featuers/screens/login/widgets/welcomeback.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formkey = GlobalKey<FormState>();

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
                Form(
                  child: Column(
                    children: [
                      AppTextFormField(hintText: 'Email'),
                      SizedBox(height: 15.h),
                      AppTextFormField(
                        hintText: 'Password',
                        obscureText: isobscureText,
                        suffixIcon: GestureDetector(
                          child: Icon(
                            isobscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                          onTap: () {
                            setState(() {
                              isobscureText = !isobscureText;
                            });
                          },
                        ),
                      ),
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
                        onpressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
