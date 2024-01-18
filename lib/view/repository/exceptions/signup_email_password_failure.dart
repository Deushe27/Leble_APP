// ignore: camel_case_types
class signUpWithEmailAndPasswordFailure {
  final String message;

  const signUpWithEmailAndPasswordFailure(
      [this.message = "An Unknown Error occurred"]);

  factory signUpWithEmailAndPasswordFailure.code(String code) {
    switch (code) {
      case 'weak password':
        return const signUpWithEmailAndPasswordFailure(
            'Please enter a stronger password.');
      case 'invalid-email':
        return const signUpWithEmailAndPasswordFailure('Email is not Valid.');
      case 'email-already-in-use':
        return const signUpWithEmailAndPasswordFailure(
            'An account already exists for that email.');
      case 'operation-not-allowed':
        return const signUpWithEmailAndPasswordFailure(
            'Operation is not allowed. Please Contact Support.');
      case 'user-disabled':
        return const signUpWithEmailAndPasswordFailure(
            'This user has been disabled. Please Contact Support For Help.');
      default:
        return const signUpWithEmailAndPasswordFailure();
    }
  }
}
