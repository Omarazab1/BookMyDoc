import 'package:bookmydoc/features/auth/logic/cubits/register/register_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/models/register/register_request_body.dart';
import '../../../data/repos/register/register_repo.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepo registerRepo;
  RegisterCubit(this.registerRepo) : super(const RegisterState.initial());

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
  TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitSignupStates() async {
    emit(const RegisterState.loading());
    final response = await registerRepo.register(
     registerRequestBody: RegisterRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        passwordConfirmation: passwordConfirmationController.text,
        gender: 0,
      ),
    );
    response.when(success: (signupResponse) {
      emit(RegisterState.success(signupResponse));
    }, failure: (error) {
      emit(RegisterState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}