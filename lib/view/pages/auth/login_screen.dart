import 'package:e_commerce/controllers/auth_controller.dart';
import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/view/pages/auth/otp_verification.dart';
import 'package:e_commerce/view/pages/auth/sign_up.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../base/custom_textfromfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailCtrl = TextEditingController();
  TextEditingController _passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<AuthController>(
        builder: (controller) {
          return SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(height: 60),
                  Center(
                    child: Text(
                      "Welcome",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                      ),
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

                  SizedBox(height: 10),

                  CustomTextFromField(
                    controller: _passCtrl,
                    obscureText: true,
                    hintText: "Enter your password",
                    labelText: "Password",
                  ),

                  Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password",
                        style: TextStyle(color: CustomColors.primaryColor),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text("Remember Me"),
                      Spacer(),
                      Switch(
                        value: Get.find<AuthController>().isRememberMe,
                        onChanged: controller.onRememberMeChanged,
                      ),
                    ],
                  ),

                  SizedBox(height: 168),
                  CustomButton(title: "Login", onPressed: () => Get.to(() => OtpVerification(),),),

                  SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: "Don't have an account? "),
                        TextSpan(
                          text: "Sign Up",
                          style: TextStyle(color: CustomColors.primaryColor),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Get.to(() => SignUpScreen()),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
   CustomButton({
    super.key,
    required  this.title,
    required this.onPressed
  });

  String title;
  Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: CustomColors.primaryColor,
        textStyle: TextStyle(color: Colors.white),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        minimumSize: Size(double.infinity, 50),
      ),

      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
