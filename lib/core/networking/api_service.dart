


import 'package:bookmydoc/features/auth/data/models/login/login_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../features/auth/data/models/login/login_request_body.dart';
import '../../features/auth/data/models/register/register_request_body.dart';
import '../../features/auth/data/models/register/register_response.dart';
import 'api_constants.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService{

  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.loginEndpoint)
  Future<LoginResponse> login( @Body() LoginRequestBody loginRequestBody);


  @POST(ApiConstants.registerEndpoint)
  Future<RegisterResponse> register( @Body() RegisterRequestBody registerRequestBody);


}