import 'package:bookmydoc/core/helper/extensions.dart';
import 'package:bookmydoc/features/auth/logic/cubits/login/login_cubit.dart';
import 'package:bookmydoc/features/auth/logic/cubits/login/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_styles.dart';

class BlocListenerLogin extends StatelessWidget {
  const BlocListenerLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit , LoginState>(
      listenWhen: (previous, current) => current is Loading || current is Success || current is Error,
        listener: (context, state){
           state.whenOrNull(
             loading: (){
               showDialog(
                   context: context,
                   builder: (context) => const Center(child: CircularProgressIndicator(),),
               );
             },
             success: (loginResponse){
               context.pop();
               context.pushNamed(Routes.homeView);
             },
             error: (error){
               context.pop();
               setupErrorState(context, error);
             },

           );
        },
      child: const SizedBox.shrink(),
        );
  }

  Future<dynamic> setupErrorState(BuildContext context, String error) {
    return showDialog(
                 context: context,
                 builder: (context) => AlertDialog(
                     icon: const Icon(
                       Icons.error,
                       color: Colors.red,
                       size: 32,
                     ),
                     content: Text(
                       error,
                       style:AppStyles.textStyle14DarkBlueMedium,
                     ),
                     actions: [
                     TextButton(
                     onPressed: () {
             context.pop();
             },
               child: Text(
                 'Got it',
                 style:AppStyles.textStyle12blue,
               ),
             )
           ]));
  }
}
