
import 'package:e_commerce/view/pages/login/login_screen.dart';
import 'package:e_commerce/view/pages/splash/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Routes{
  static String splashScreen="/";
  static String loginScreen="/login_screen";
}


// Map<String,WidgetBuilder> pages={
//   Routes.splashScreen:(_)=>SplashScreen(),
//   Routes.loginScreen:(_)=>LoginScreen()
// };


List<GetPage> pages=[
  GetPage(name: Routes.splashScreen, page: ()=>SplashScreen(),transition: Transition.noTransition),
  GetPage(name: Routes.loginScreen, page: ()=>LoginScreen(),transition: Transition.downToUp,transitionDuration: Duration(seconds: 3))
];
