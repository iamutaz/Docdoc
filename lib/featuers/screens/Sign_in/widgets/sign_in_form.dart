import 'package:docdoc/core/helpers/app_regex.dart';
import 'package:docdoc/core/theming/colorsmanager.dart';
import 'package:docdoc/core/widgets/password_validation.dart';
import 'package:docdoc/featuers/screens/Sign_in/data/logic/cubit/signin_cubit.dart';
import 'package:docdoc/featuers/screens/login/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  bool isobscurepass = true;
  bool isobscurepassconfirmation = true;
  bool haslowerCase = false,
      hasUppercase = false,
      hasSpeacialCharacter = false,
      hasNumber = false,
      hasMinLenght = false;
  late TextEditingController passController;
  @override
  void initState() {
    super.initState();
    passController = context.read<SigninCubit>().passwordcontroller;
    setupPasswordController();
  }

  @override
  void dispose() {
    passController.dispose();
    super.dispose();
  }

  void setupPasswordController() {
    passController.addListener(() {
      setState(() {
        haslowerCase = AppRegex.hasLowerCase(passController.text);
        hasUppercase = AppRegex.hasUpperCase(passController.text);
        hasSpeacialCharacter = AppRegex.hasSpecialCharacter(
          passController.text,
        );
        hasMinLenght = AppRegex.hasMinLength(passController.text);
        hasNumber = AppRegex.hasNumber(passController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SigninCubit>().keyform,
      child: Column(
        children: [
          AppTextFormField(
            hintText: "name",
            validator: (value) {},
            textEditingController: context.read<SigninCubit>().namecontroller,
          ),
          SizedBox(height: 16.h),
          AppTextFormField(
            hintText: "Email",
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return "enter a valid email";
              }
            },
            textEditingController: context.read<SigninCubit>().emailcontroller,
          ),
          SizedBox(height: 16.h),
          AppTextFormField(
            hintText: "Your number",
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.hasNumber(value)) {
                return "enter a valid number";
              }
            },
            textEditingController: context.read<SigninCubit>().numbercontroller,
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 13.0.w, vertical: 18.h),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset("assets/images/syria.png", height: 21, width: 30),
                  Icon(Icons.arrow_drop_down),
                  SizedBox(width: 16.w),
                  Container(
                    width: 1,
                    height: 24,
                    color: Colorsmanager.lighterGray,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 16.h),
          AppTextFormField(
            hintText: "gender",
            validator: (value) {},
            textEditingController: context.read<SigninCubit>().gendercontroller,
          ),
          SizedBox(height: 16.h),

          AppTextFormField(
            obscureText: isobscurepass,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isobscurepass = !isobscurepass;
                });
              },
              child: Icon(
                isobscurepass ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            textEditingController: context
                .read<SigninCubit>()
                .passwordcontroller,

            hintText: "Password",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "enter a valid password";
              }
            },
          ),
          SizedBox(height: 16.h),
          AppTextFormField(
            obscureText: isobscurepassconfirmation,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isobscurepassconfirmation = !isobscurepassconfirmation;
                });
              },
              child: Icon(
                isobscurepassconfirmation
                    ? Icons.visibility_off
                    : Icons.visibility,
              ),
            ),
            textEditingController: context
                .read<SigninCubit>()
                .passwordconfirmationcontroller,
            hintText: "Password confiramtion",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "enter the confirm password";
              } else if (passController.text != value) {
                return "no matching with the password";
              }
            },
          ),
          SizedBox(height: 10.h),
          PasswordValidation(
            hasLowerCase: haslowerCase,
            hasMinLength: hasMinLenght,
            hasNumber: hasNumber,
            hasSpecailCharacter: hasSpeacialCharacter,
            hasUpperCase: hasUppercase,
          ),
        ],
      ),
    );
  }
}
