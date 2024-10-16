import 'package:bookmydoc/features/auth/data/repos/login_repo.dart';
import 'package:bookmydoc/features/auth/logic/cubits/login/login_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../networking/api_service.dart';
import '../networking/dio_factory.dart';

final getIt = GetIt.instance;
Future<void> setUpGetIt() async {
  //dio&apiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  //login
  getIt.registerLazySingleton<LoginRepo>( () => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>( () => LoginCubit(getIt()));
}