import 'package:bloc/bloc.dart';
import 'package:docdoc/core/networking/api_result.dart';
import 'package:docdoc/featuers/screens/login/data/logic/cubit/login_cubit_state.dart';
import 'package:docdoc/featuers/screens/login/data/models/loginrequestbody.dart';
import 'package:docdoc/featuers/screens/login/data/repos/login_repo.dart';

class LoginCubitCubit extends Cubit<LoginCubitState> {
  final LoginRepo loginRepo;
  LoginCubitCubit(this.loginRepo) : super(LoginCubitState.initial());

  void emitLoginState(Loginrequestbody loginrequestbody) async {
    emit(LoginCubitState.loading());
    final response = await loginRepo.login(loginrequestbody);
    response.when(
      success: (loginResponseBody) {
        emit(LoginCubitState.success(loginResponseBody));
      },
      failure: (error) {
        emit(
          LoginCubitState.failure(error: error.loginResponseBody.message ?? ""),
        );
      },
    );
  }
}
