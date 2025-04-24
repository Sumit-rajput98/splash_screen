import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1/src/features/authentication/screens/home/home_screen.dart';
import 'package:project_1/src/features/authentication/screens/login/login_page.dart';
import 'package:project_1/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:project_1/src/features/authentication/screens/sign_up/sign_up.dart';
import 'package:project_1/src/features/authentication/screens/welcome_screen/welcomeView.dart';
import 'package:project_1/src/features/authentication/services/shared_pref_service/shared_pref_helper.dart';
import 'package:project_1/src/utils/theme/theme.dart';
import 'src/routing/routes.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final isLoggedIn = await SharedPrefHelper.isLoggedIn() ?? false;
  runApp(MyApp(isLogIn : isLoggedIn));
}

class MyApp extends StatelessWidget {
  final bool? isLogIn;
  const MyApp({super.key, required this.isLogIn});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: PAppTheme.lightTheme,
      darkTheme: PAppTheme.darkTheme,
      themeMode: ThemeMode.light,
      initialRoute: MyRoutes.welcome,
      getPages: [
        GetPage(name: MyRoutes.signUpRoute, page: () => SignUp()),
        GetPage(name: MyRoutes.secondRoute, page: () => LoginPage()),
        GetPage(
          name: MyRoutes.dashBoard,
          page: () => HomeScreen(),
        ),
        GetPage(
          name: MyRoutes.onBoarding,
          page: () => OnBoardingScreen()
        ),
        GetPage(
            name: MyRoutes.welcome,
            page: () => WelcomeSplashScreen()
        ),
      ],
    );
  }


}
