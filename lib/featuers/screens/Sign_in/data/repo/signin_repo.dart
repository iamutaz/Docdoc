import 'package:docdoc/core/networking/api_error_handler.dart';
import 'package:docdoc/core/networking/api_result.dart';
import 'package:docdoc/core/networking/web_services.dart';
import 'package:docdoc/featuers/screens/Sign_in/data/models/sign_in_request_body.dart';
import 'package:docdoc/featuers/screens/Sign_in/data/models/sign_in_response_body.dart';

class SigninRepo {
  WebServices _webServices;

  SigninRepo(this._webServices);

  Future<ApiResult<SignInResoinseBody>> signin(
    SignInRequestBody signinrequestbody,
  ) async {
    try {
      var response = await _webServices.signin(signinrequestbody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
