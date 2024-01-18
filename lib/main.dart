import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:leble_test_1/firebase_options.dart'; // Ensure that you have this import
import 'package:leble_test_1/view/repository/authentication.repository.dart';
import 'package:leble_test_1/view/splash.view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
            options: DefaultFirebaseOptions.currentPlatform)
        .then((value) => Get.put(AuthenticationRepository()));
    runApp(const Leble());
  } catch (e) {
    print('Failed to initialize Firebase: $e');
  }
}

class Leble extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Leble({Key? key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
