class UserModal {
  String? firstName;
  String? lastName;
  String? email;
  String? password;
  String? phoneNo;
  int? role;
  bool? isEmailVerified;
  bool? deleted;
  bool? approved;

  UserModal(
      {required this.approved,
      required this.deleted,
      required this.email,
      required this.firstName,
      required this.isEmailVerified,
      required this.lastName,
      required this.password,
      required this.phoneNo,
      required this.role});

// Map<String, dynamic> userd = {

// 'firstName': firstName,
// 'lastName':

// };
}
