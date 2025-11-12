import 'package:docdoc/core/helpers/app_regex.dart';
import 'package:docdoc/featuers/screens/login/data/logic/cubit/login_cubit_cubit.dart';
import 'package:docdoc/featuers/screens/login/widgets/app_text_form_field.dart';
import 'package:docdoc/core/widgets/password_validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isobscureText = true;
  bool haslowerCase = false,
      hasUppercase = false,
      hasSpeacialCharacter = false,
      hasNumber = false,
      hasMinLenght = false;
  late TextEditingController passWordController;

  @override
  void initState() {
    super.initState();
    passWordController = context.read<LoginCubitCubit>().passController;
    setupPasswordController();
  }

  @override
  void dispose() {
    passWordController.dispose();
    super.dispose();
  }

  void setupPasswordController() {
    passWordController.addListener(() {
      setState(() {
        haslowerCase = AppRegex.hasLowerCase(passWordController.text);
        hasMinLenght = AppRegex.hasMinLength(passWordController.text);
        hasUppercase = AppRegex.hasUpperCase(passWordController.text);
        hasSpeacialCharacter = AppRegex.hasSpecialCharacter(
          passWordController.text,
        );
        hasNumber = AppRegex.hasNumber(passWordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubitCubit>().formkey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: 'Email',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return "enter a valid email";
              }
            },
            textEditingController: context
                .read<LoginCubitCubit>()
                .emailController,
          ),
          SizedBox(height: 15.h),
          AppTextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "enter a valid password";
              }
            },
            textEditingController: context
                .read<LoginCubitCubit>()
                .passController,
            hintText: 'Password',
            obscureText: isobscureText,
            suffixIcon: GestureDetector(
              child: Icon(
                isobscureText ? Icons.visibility_off : Icons.visibility,
              ),
              onTap: () {
                setState(() {
                  isobscureText = !isobscureText;
                });
              },
            ),
          ),
          SizedBox(height: 20.h),
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
