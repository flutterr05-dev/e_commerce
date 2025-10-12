import 'package:e_commerce/utils/colors.dart';
import 'package:flutter/material.dart';

import '../../base/custom_textfromfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
    TextEditingController _emailCtrl=TextEditingController();
    TextEditingController _passCtrl=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 60),
              Center(
                child: Text(
                  "Welcome",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                "Please enter your data to continue",
                textAlign: TextAlign.center,
                style: TextStyle(color: CustomColors.greyColor),
              ),
              SizedBox(height: 164),
              CustomTextFromField(
                  controller: _emailCtrl,
                hintText: "Enter your email",
                labelText: "Email",

              ),
              SizedBox(height: 10,),
              CustomTextFromField(
                controller: _passCtrl,
                obscureText: true,
                hintText: "Enter your password",
                labelText: "Password",
              ),

            ],
          ),
        ),
      ),
    );
  }
}


