import 'package:e_commerce/routes/routes.dart';
import 'package:e_commerce/utils/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: CustomColors.primaryColor,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
     initialRoute: Routes.splashScreen,
     routes: pages,
    );
  }
}


