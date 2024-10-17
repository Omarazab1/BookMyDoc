import 'package:bookmydoc/core/networking/api_error_handler.dart';
import 'package:bookmydoc/core/networking/api_result.dart';
import 'package:bookmydoc/core/networking/api_service.dart';
import 'package:bookmydoc/features/auth/data/models/login/login_response.dart';

import '../../models/login/login_request_body.dart';

class LoginRepo{
  final ApiService apiService;

  LoginRepo(this.apiService);

  Future<ApiResult<LoginResponse>> login(
      {required LoginRequestBody loginRequestBody}) async
  {
       try{
         final response = await apiService.login(loginRequestBody);
         return ApiResult.success(response);
       }catch(e){
         return ApiResult.failure(ErrorHandler.handle(e));
       }
  }
}