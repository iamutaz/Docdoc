import 'package:json_annotation/json_annotation.dart';

part 'sign_in_request_body.g.dart';

@JsonSerializable()
class SignInRequestBody {
  String name;
  String email;
  String phone;
  String gender;
  String password;
  @JsonKey(name: "password_confirmation")
  String passwordConfirmation;

  SignInRequestBody({
    required this.email,
    required this.gender,
    required this.name,
    required this.password,
    required this.passwordConfirmation,
    required this.phone,
  });
  Map<String, dynamic> toJson() => _$SignInRequestBodyToJson(this);
}
