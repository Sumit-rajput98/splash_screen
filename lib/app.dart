/*
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:project_1/src/features/authentication/screens/home/home_screen.dart';
import 'package:project_1/src/features/authentication/screens/login/login_page.dart';
import 'package:project_1/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:project_1/src/features/authentication/screens/sign_up/sign_up.dart';
import 'package:project_1/src/routing/routes.dart';
import 'package:project_1/src/utils/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: PAppTheme.lightTheme,
      darkTheme: PAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      initialRoute: MyRoutes.homeRoute,
      getPages: [
        GetPage(
          name: MyRoutes.homeRoute,
          page: () => OnBoardingScreen(),
        ),
        GetPage(
          name: MyRoutes.secondRoute,
          page: () => LoginPage(),
        ),
        GetPage(
          name: MyRoutes.dashBoard,
          page: () => HomeScreen(),
        ),
        GetPage(
          name: MyRoutes.signUpRoute,
          page: () => SignUp(),
        ),
      ],
    );
  }
}


*/
