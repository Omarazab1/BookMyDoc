
import 'package:bookmydoc/core/di/dependency_injection.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/on_generate_route.dart';
import 'core/routing/routes.dart';
import 'core/theming/app_colors.dart';
void main() {
  setUpGetIt();
  runApp(DevicePreview(
    enabled: true,
    builder: (context) => BookMyDoc(
      onGenerateRoute: OnGenerateRoute(),
    ),
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
