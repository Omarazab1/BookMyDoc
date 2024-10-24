
import 'package:bookmydoc/core/helper/constants.dart';
import 'package:bookmydoc/core/networking/dio_factory.dart';
import 'package:bookmydoc/features/auth/data/repos/login/login_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/helper/shared_pref_helper.dart';
import '../../../data/models/login/login_request_body.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

    void emitLoginStates() async {
      emit(const LoginState.loading());
      final result = await _loginRepo.login(
        loginRequestBody: LoginRequestBody(
          email: emailController.text,
          password: passwordController.text,
        ),
      );
      result.when(
          success: (loginResponse) async{
            await saveUserToken(loginResponse.userData!.token!);
            emit(LoginState.success(loginResponse));
          },
          failure:(error){
            emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
          },
      );
    }
}
Future<void> saveUserToken(String token) async {
  await SharedPrefHelper.setData(SharedPrefKeys.userToken, token);
  DioFactory.setTokenIntoHeaderAfterLogin(token);
}