import 'package:json_annotation/json_annotation.dart';

part 'loginrequestbody.g.dart';

@JsonSerializable()
class Loginrequestbody {
  String email;
  String password;

  Loginrequestbody({required this.email, required this.password});

  Map<String, dynamic> toJson() => _$LoginrequestbodyToJson(this);
}
