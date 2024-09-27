
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/on_generate_route.dart';
import 'core/routing/routes.dart';
import 'core/theming/app_colors.dart';
void main() {
  runApp(BookMyDoc(
    onGenerateRoute: OnGenerateRoute(),
  ));

}
class BookMyDoc extends StatelessWidget {
  const BookMyDoc({super.key, required this.onGenerateRoute});
  final OnGenerateRoute onGenerateRoute;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: AppColors.kPrimaryColor,
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: Routes.splashView,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: OnGenerateRoute().onGenerateRoute,
      ),
    );
  }
}
