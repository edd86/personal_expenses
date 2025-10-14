class AccountsModel {
  final int? id;
  final String name;
  final String accountType;
  final double balance;
  final String currency;
  final String icon;
  final String color;
  final bool isActive;
  final int userId;
  final DateTime createdAt = DateTime.now();
  final DateTime updatedAt = DateTime.now();

  AccountsModel({
    this.id,
    required this.name,
    required this.accountType,
    required this.balance,
    required this.currency,
    required this.icon,
    required this.color,
    required this.isActive,
    required this.userId,
  });

  factory AccountsModel.fromMap(Map<String, dynamic> map) {
    return AccountsModel(
      id: map['id'],
      name: map['name'],
      accountType: map['accountType'],
      balance: map['balance'],
      currency: map['currency'],
      icon: map['icon'],
      color: map['color'],
      isActive: map['isActive'] == 1 ? true : false,
      userId: map['userId']
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'accountType': accountType,
      'balance': balance,
      'currency': currency,
      'icon': icon,
      'color': color,
      'isActive': isActive ? 1 : 0,
      'userId': userId
    };
  }

  AccountsModel copyWith({
    int? id,
    String? name,
    String? accountType,
    double? balance,
    String? currency,
    String? icon,
    String? color,
    bool? isActive,
    int? userId,
  }) {
    return AccountsModel(
      id: id ?? this.id,
      name: name ?? this.name,
      accountType: accountType ?? this.accountType,
      balance: balance ?? this.balance,
      currency: currency ?? this.currency,
      icon: icon ?? this.icon,
      color: color ?? this.color,
      isActive: isActive ?? this.isActive,
      userId: userId ?? this.userId
    );
  }
}
