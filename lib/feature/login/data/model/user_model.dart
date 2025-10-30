class UserLoginModel {
  int? id;
  final String email;
  final String password;
  UserLoginModel({
    this.id,
    required this.email,
    required this.password,
  });

  factory UserLoginModel.fromMap(Map<String, dynamic> map) {
    return UserLoginModel(
      id: map['id'],
      email: map['email'],
      password: map['password'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
    };
  }

  UserLoginModel copyWith({
    int? id,
    String? email,
    String? password,
  }) {
    return UserLoginModel(
      id: id ?? this.id,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
}
