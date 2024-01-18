import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:leble_test_1/utils/global.colors.dart';
import 'package:leble_test_1/view/controllers/signup.controller.dart';
import 'package:leble_test_1/view/login.view.dart';
import 'package:leble_test_1/view/widgets/google.button.dart';
import 'package:leble_test_1/view/widgets/text.form.global.dart';

class SignUpView extends StatelessWidget {
  SignUpView({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  final SignUpController controller = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: 390,
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),
                  Center(
                    child: Image.asset(
                      'assets/images/leble-logo.png',
                      width: 76,
                      height: 85,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: Text(
                      "Let's Get Started",
                      style: TextStyle(
                        color: globalColors.textColor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: Text(
                      "Please enter your details!",
                      style: TextStyle(
                        color: globalColors.textColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextFormGlobal(
                    controller: controller.fullNameController,
                    text: 'Full Name',
                    obscure: false,
                    textInputType: TextInputType.text,
                  ),
                  const SizedBox(height: 15),
                  TextFormGlobal(
                    controller: controller.emailController,
                    text: 'Email',
                    obscure: false,
                    textInputType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 15),
                  TextFormGlobal(
                    controller: controller.phoneController,
                    text: 'Phone Number',
                    textInputType: TextInputType.phone,
                    obscure: false,
                  ),
                  const SizedBox(height: 15),
                  TextFormGlobal(
                    controller: controller.passwordController,
                    text: 'Password',
                    textInputType: TextInputType.text,
                    obscure: true,
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    height: 55, // Corrected typo from 'heigh' to 'height'
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          controller.registerUser(
                            controller.emailController.text.trim(),
                            controller.passwordController.text.trim(),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        primary: globalColors.textColor,
                        onPrimary: Colors.white,
                        elevation: 10, // Adjust the elevation as needed
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      child: const Text('SIGN UP'),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const GoogleButton(),
                  TextButton(
                    onPressed: () {
                      Get.to(() => LoginView());
                    },
                    child: Text.rich(
                      TextSpan(
                        text: 'Already Have An Account?',
                        style: const TextStyle(color: Colors.black),
                        children: [
                          TextSpan(
                            text: ' Login',
                            style: TextStyle(color: globalColors.textColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
