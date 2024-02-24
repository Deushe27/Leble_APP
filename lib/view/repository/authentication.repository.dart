import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:leble_test_1/view/home_screen.dart';
import 'package:leble_test_1/view/signup_view.dart';
import 'package:leble_test_1/view/repository/exceptions/signup_email_password_failure.dart';
import 'package:leble_test_1/view/splash.view.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    print("onReady called");
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  void _setInitialScreen(User? user) {
    if (user == null) {
      Get.offAll(() => HomeScreen());
    } else {
      Get.offAll(() => SignUpView()); // Fixed the function name and import
    }
  }

  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      firebaseUser.value != null
          ? Get.offAll(() => HomeScreen())
          : Get.to(() => const SplashView());
    } on FirebaseAuthException catch (e) {
      final ex = signUpWithEmailAndPasswordFailure.code(e.code);
      // ignore: avoid_print
      print('FIREBASE AUTH EXCEPTION - ${ex.message} ');
      throw ex;
    } catch (_) {
      const ex = signUpWithEmailAndPasswordFailure();
      // ignore: avoid_print
      print('EXCEPTION - ${ex.message} ');
      throw ex;
    }
  }

  Future<void> loginWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (_) {
      // Handle specific exceptions if needed
    } catch (_) {
      // Handle other exceptions if needed
    }
  }

  Future<void> logout() async => await _auth.signOut();
}
