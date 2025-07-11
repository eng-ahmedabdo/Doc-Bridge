import 'package:dio/dio.dart';
import 'package:doc_bridge/core/networking/api_constants.dart';
import 'package:doc_bridge/features/login/data/models/login_request_body.dart';
import 'package:doc_bridge/features/login/data/models/login_response.dart';
import 'package:doc_bridge/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:doc_bridge/features/sign_up/data/models/sign_up_response.dart';
import 'package:retrofit/retrofit.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);

  @POST(ApiConstants.signup)
  Future<SignupResponse> signup(@Body() SignupRequestBody signupRequestBody);
}
