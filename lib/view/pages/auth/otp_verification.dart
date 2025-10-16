import 'package:e_commerce/controllers/auth_controller.dart';
import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/view/pages/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import '../../../helpers/time_formetter.dart';
import '../../base/custom_textfromfield.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  AuthController _authController = Get.find<AuthController>();

  TextEditingController _pinPutController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _authController.startTimer();
    super.initState();
  }

  @override
  void dispose() {
    _authController.dispostTimer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("OTP Verification"), centerTitle: true),
      body: Form(
        key: _formKey,
        child: Center(
          child: Obx(
            () => Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Pinput(
                  controller: _pinPutController,

                  validator: (v) {
                    if (v!.length < 4) {
                      return "Enter a valid code";
                    }
                    return null;
                  },

                  length: 4,
                ),
                const SizedBox(height: 30),
                _authController.enableResend.value
                    ? TextButton(
                        onPressed: () {
                          _authController.startTimer();
                        },
                        child: Text("Resend Code"),
                      )
                    : RichText(
                        text: TextSpan(
                          text: formatTime(
                            _authController.secondsRemaining.value,
                          ),
                          style: TextStyle(
                            color: CustomColors.primaryColor,
                            fontSize: 18,
                          ),
                          children: [
                            TextSpan(
                              text: " resend confirmation code.",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),

                const SizedBox(height: 30),
                ////

                CustomTextFromField(
                  controller: _passwordController,

                  hintText: "Enter your password",
                  labelText: "Password",
                ),

                CustomTextFromField(
                  validator: (v){
                    if(_passwordController.text!=v){
                      return "Password not match";
                    }
                    return null;

                  },

                  hintText: "Enter your confirm password",
                  labelText: "",
                ),





                CustomButton(title: "Confirm", onPressed: () {

                  if (_formKey.currentState!.validate()) {
                    print("Success");

                  }
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
