class User {
  int? id;
  final String name;
  final String email;
  final String password;
  final String currency;
  final DateTime createdAt;
  final DateTime updatedAt;
  User({
    this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.currency,
    required this.createdAt,
    required this.updatedAt,
  });
}
