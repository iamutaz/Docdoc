import 'package:bloc/bloc.dart';
import 'package:docdoc/core/networking/api_result.dart';
import 'package:docdoc/featuers/screens/login/data/logic/cubit/login_cubit_state.dart';
import 'package:docdoc/featuers/screens/login/data/models/loginrequestbody.dart';
import 'package:docdoc/featuers/screens/login/data/repos/login_repo.dart';
import 'package:flutter/widgets.dart';

class LoginCubitCubit extends Cubit<LoginCubitState> {
  final LoginRepo _loginRepo;
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  final formkey = GlobalKey<FormState>();
  LoginCubitCubit(this._loginRepo) : super(LoginCubitState.initial());

  void emitLoginState(Loginrequestbody loginrequesbody) async {
    emit(LoginCubitState.loading());
    final response = await _loginRepo.login(loginrequesbody);
    response.when(
      success: (loginResponseBody) {
        emit(LoginCubitState.success(loginResponseBody));
      },
      failure: (error) {
        emit(LoginCubitState.failure(error: error.apiErrorModel.message ?? ""));
      },
    );
  }
}
