import 'package:freezed_annotation/freezed_annotation.dart';

part 'signin_state.freezed.dart';

@Freezed()
class SigninState<T> with _$SigninState {
  const factory SigninState.initial() = _Initial;
  const factory SigninState.signuploading() = SignupLoading;
  const factory SigninState.signupsuccess(T data) = SignupSuccess;
  const factory SigninState.signupfailure({required String error}) =
      SignupFailure;
}
