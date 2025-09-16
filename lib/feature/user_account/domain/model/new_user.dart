class NewUser {
  int? id;
  final String name;
  final String email;
  final String password;
  final String currency;
  NewUser({
    this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.currency,
  });
}