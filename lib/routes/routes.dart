
import 'package:e_commerce/view/pages/auth/login_screen.dart';
import 'package:e_commerce/view/pages/splash/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../view/pages/mainScreen/main_screen.dart';

class Routes{
  static String splashScreen="/";
  static String loginScreen="/login_screen";
  static String registerScreen="/register_screen";
  static String forgotPasswordScreen="/forgot_password_screen";
  static String homeScreen="/home_screen";
  static String mainScreen="/main_screen";

}


// Map<String,WidgetBuilder> pages={
//   Routes.splashScreen:(_)=>SplashScreen(),
//   Routes.loginScreen:(_)=>LoginScreen()
// };


List<GetPage> pages=[
  GetPage(name: Routes.splashScreen, page: ()=>SplashScreen(),transition: Transition.noTransition),
    GetPage(name: Routes.loginScreen, page: ()=>LoginScreen(),transition: Transition.downToUp,),
    GetPage(name: Routes.mainScreen, page: ()=>MainScreen()),

];
