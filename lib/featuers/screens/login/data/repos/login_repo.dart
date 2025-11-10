import 'package:docdoc/core/networking/api_error_handler.dart';
import 'package:docdoc/core/networking/api_result.dart';
import 'package:docdoc/core/networking/web_services.dart';
import 'package:docdoc/featuers/screens/login/data/models/login_response_body.dart';
import 'package:docdoc/featuers/screens/login/data/models/loginrequestbody.dart';

class LoginRepo {
  final WebServices _webServices;
  LoginRepo(this._webServices);

  Future<ApiResult<LoginResponseBody>> login(
    Loginrequestbody loginrequestbody,
  ) async {
    try {
      var response = await _webServices.login(loginrequestbody);
      print("all things is good in repo");
      return ApiResult.success(response);
    } catch (error) {
      print("catch in repo");
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
