// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignInRequestBody _$SignInRequestBodyFromJson(Map<String, dynamic> json) =>
    SignInRequestBody(
      email: json['email'] as String,
      gender: json['gender'] as String,
      name: json['name'] as String,
      password: json['password'] as String,
      passwordConfirmation: json['password_confirmation'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$SignInRequestBodyToJson(SignInRequestBody instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'gender': instance.gender,
      'password': instance.password,
      'password_confirmation': instance.passwordConfirmation,
    };
