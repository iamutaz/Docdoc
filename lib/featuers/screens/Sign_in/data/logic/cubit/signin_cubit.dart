import 'package:docdoc/core/networking/api_result.dart';
import 'package:docdoc/featuers/screens/Sign_in/data/logic/cubit/signin_state.dart';
import 'package:docdoc/featuers/screens/Sign_in/data/models/sign_in_request_body.dart';
import 'package:docdoc/featuers/screens/Sign_in/data/repo/signin_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit(this.signinRepo) : super(SigninState.initial());

  SigninRepo signinRepo;
  final keyform = GlobalKey<FormState>();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController gendercontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  TextEditingController passwordconfirmationcontroller =
      TextEditingController();
  TextEditingController numbercontroller = TextEditingController();

  void emitSignInState(SignInRequestBody signinreqestbody) async {
    emit(SigninState.signuploading());
    final response = await signinRepo.signin(signinreqestbody);
    response.when(
      success: (data) {
        emit(SigninState.signupsuccess(data));
      },
      failure: (error) {
        emit(
          SigninState.signupfailure(error: error.apiErrorModel.message ?? ""),
        );
      },
    );
  }
}
