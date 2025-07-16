import 'package:doc_bridge/core/networking/api_error_handler.dart';
import 'package:doc_bridge/core/networking/api_result.dart';
import 'package:doc_bridge/features/home/data/apis/home_api_service.dart';

import '../models/specilization_response_model.dart';

class HomeRepo {
  final HomeApiService _homeApiService;

  HomeRepo(this._homeApiService);

  Future<ApiResult<SpecializationsResponseModel>> getSpecialization() async{
      try{
        final response = await _homeApiService.getSpecialization();
        return ApiResult.success(response);
      } catch (error) {
        return ApiResult.failure(ErrorHandler.handle(error));
      }
  }
}
