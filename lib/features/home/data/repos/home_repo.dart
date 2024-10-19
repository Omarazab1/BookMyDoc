import 'package:bookmydoc/core/networking/api_result.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../apis/home_api_service.dart';
import '../models/specializations_response_model.dart';

class HomeRepo {
  final  HomeApiService _homeApiService;
  HomeRepo(this._homeApiService);

  Future<ApiResult<SpecializationsResponseModel>> getSpecializationsData() async {
    try {
      final response = await _homeApiService.getSpecializationsData();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}