import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:leble_test_1/view/repository/authentication.repository.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

  registerUser(String email, String password) {
    AuthenticationRepository.instance
        .createUserWithEmailAndPassword(email, password);
  }
}
