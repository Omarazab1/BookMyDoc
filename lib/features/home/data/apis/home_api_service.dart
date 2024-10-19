
import 'package:bookmydoc/features/home/data/models/specializations_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../../../core/networking/api_constants.dart';
part 'home_api_service.g.dart';
@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio, {String baseUrl}) = _HomeApiService;

  @GET(ApiConstants.homeEndpoint)
  Future<SpecializationsResponseModel> getSpecializationsData();


}