import 'package:json_annotation/json_annotation.dart';

part 'sign_in_response_body.g.dart';

@JsonSerializable()
class SignInResoinseBody {
  String? message;
  bool? status;
  int? code;
  @JsonKey(name: "data")
  UserData? userData;

  SignInResoinseBody({this.code, this.message, this.status, this.userData});

  factory SignInResoinseBody.fromJson(Map<String, dynamic> json) =>
      _$SignInResoinseBodyFromJson(json);
}

@JsonSerializable()
class UserData {
  String? token;
  @JsonKey(name: "username")
  String? userName;

  UserData({this.token, this.userName});

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
