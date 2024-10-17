

import 'package:bookmydoc/core/networking/api_result.dart';
import 'package:bookmydoc/features/auth/data/models/register/register_request_body.dart';
import 'package:bookmydoc/features/auth/data/models/register/register_response.dart';

import '../../../../../core/networking/api_error_handler.dart';
import '../../../../../core/networking/api_service.dart';

class RegisterRepo{
  final ApiService apiService;

  RegisterRepo(this.apiService);
  Future<ApiResult<RegisterResponse>> register({required RegisterRequestBody registerRequestBody}) async {

    try{
      final response = await apiService.register(registerRequestBody);
      return ApiResult.success(response);
    }catch(e){
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}