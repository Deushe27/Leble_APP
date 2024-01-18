import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:leble_test_1/utils/global.colors.dart';
import 'package:leble_test_1/view/signup_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 1),
      () {
        Get.to(SignUpView());
      },
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          'Logo',
          style: TextStyle(
            color: globalColors.textColor,
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
