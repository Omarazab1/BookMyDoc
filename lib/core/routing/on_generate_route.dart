import 'package:bookmydoc/core/di/dependency_injection.dart';
import 'package:bookmydoc/core/routing/routes.dart';
import 'package:bookmydoc/features/auth/presentation/sign_up/sign_up_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/auth/logic/cubits/login/login_cubit.dart';
import '../../features/auth/logic/cubits/register/register_cubit.dart';
import '../../features/auth/presentation/sign_in/login_view.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/on_boarding_screen/presentation/on_boarding_screen_view.dart';
import '../../features/splash/presentation/splash_view.dart';
class OnGenerateRoute {
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashView:
      return MaterialPageRoute(builder: (context) => const SplashView());
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (context) => const OnBoardingScreenView());
      case Routes.loginScreen:
      return MaterialPageRoute(builder: (context) => BlocProvider(
          create: (context) => getIt<LoginCubit>(),
          child: const LoginView()));
      case Routes.signUpScreen:
        return MaterialPageRoute(builder: (context) => BlocProvider(
            create: (context) => getIt<RegisterCubit>(),
            child: const SignUpView()));
      case Routes.homeView:
        return MaterialPageRoute(builder: (context) => const HomeView());
      default:
      return MaterialPageRoute(builder: (context) => Scaffold(
        body: Center(
          child: Text('No route defined for ${settings.name}'),
        ),
      )
      );
    }

  }
}