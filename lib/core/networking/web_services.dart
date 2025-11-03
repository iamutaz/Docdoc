import 'package:dio/dio.dart';
import 'package:docdoc/core/networking/api_constants.dart';
import 'package:docdoc/featuers/screens/login/data/models/login_response_body.dart';
import 'package:docdoc/featuers/screens/login/data/models/loginrequestbody.dart';
import 'package:retrofit/retrofit.dart';

part 'web_services.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class WebServices {
  factory WebServices(Dio dio, {String? baseUrl}) = _WebServices;

  @POST(ApiConstants.login)
  Future<LoginResponseBody> login(@Body() Loginrequestbody loginrequsetbody);
}
