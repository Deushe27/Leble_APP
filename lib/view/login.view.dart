import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:leble_test_1/utils/global.colors.dart';
import 'package:leble_test_1/view/signup_view.dart';
import 'package:leble_test_1/view/widgets/button.global.dart';
import 'package:leble_test_1/view/widgets/google.button.dart';
import 'package:leble_test_1/view/widgets/text.form.global.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: 390,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 118),
                Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/leble-logo.png', // Replace with your logo path
                    width: 76, // Adjust width as needed
                    height: 85, // Adjust height as needed
                  ),
                ),
                const SizedBox(height: 10),
                Center(
                  child: Text(
                    "Welcome Back",
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
                const SizedBox(
                    height: 15), // Spasi antara teks kedua dan TextFormGlobal
                TextFormGlobal(
                  controller: emailController,
                  text: 'Email',
                  obscure: false,
                  textInputType: TextInputType.emailAddress,
                ),
                TextFormGlobal(
                    controller: passwordController,
                    text: 'Password',
                    textInputType: TextInputType.text,
                    obscure: true), // Memasukkan widget TextFormGlobal
                const SizedBox(height: 15),
                ButtonGlobal(
                  onPressed: () {},
                ),
                const SizedBox(height: 20),
                const GoogleButton(),
                TextButton(
                  onPressed: () {
                    Get.to(() => SignUpView());
                  },
                  child: Text.rich(
                    TextSpan(
                      text: 'Dont Have Account?',
                      style: const TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: ' SignUp',
                          style: TextStyle(color: globalColors.textColor),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
