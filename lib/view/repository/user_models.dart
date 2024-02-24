/*

    Todo: Step 1 Create Model

*/

class UserModel {
  final String? id;
  final String fullName;
  final String email;
  final String phoneNumber;
  final String password;

  const UserModel({
    this.id,
    required this.email,
    required this.password,
    required this.fullName,
    required this.phoneNumber,
  });

  toJson() {
    return {
      "Fullname": fullName,
      "Email": email,
      "Phone": phoneNumber,
      "password": password,
    };
  }
}
