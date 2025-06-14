import 'package:doc_bridge/core/networking/api_result.dart';
import 'package:doc_bridge/core/networking/api_services.dart';
import 'package:doc_bridge/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:doc_bridge/features/sign_up/data/models/sign_up_response.dart';
import '../../../../core/networking/api_error_handler.dart';

class SignupRepo {
  final ApiService _apiService;

  SignupRepo(this._apiService);

  Future<ApiResult<SignupResponse>> signup(
    SignupRequestBody signupRequestBody,
  ) async {
    try {
      final response = await _apiService.signup(signupRequestBody);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }
}
