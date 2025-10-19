import 'package:e_commerce/routes/routes.dart';
import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/view/pages/auth/otp_verification.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'helpers/di.dart' as di;

void main() async{
    await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Manrope",
        primaryColor: CustomColors.primaryColor,
        scaffoldBackgroundColor: Color(0xffFEFEFE),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xffFEFEFE)
        ),
        canvasColor: Color(0xffFEFEFE),
      ),

     initialRoute: Routes.splashScreen,
    // routes: pages,
     getPages: pages,


    );
  }
}


