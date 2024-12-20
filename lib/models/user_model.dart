class UserModel {
  final String userCode;
  final String userDisplayName;
  final String email;

  UserModel({
    required this.userCode,
    required this.userDisplayName,
    required this.email,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      userCode: json['User_Code'],
      userDisplayName: json['User_Display_Name'],
      email: json['Email'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userCode': userCode,
      'userDisplayName': userDisplayName,
      'email': email,
    };
  }
}
