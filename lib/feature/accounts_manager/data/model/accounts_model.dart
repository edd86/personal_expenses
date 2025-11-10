import 'package:flutter/widgets.dart';
import 'package:personal_expenses/core/constants/enum_color.dart';

class AccountModel {
  final int? id;
  final String name;
  final String accountType;
  final double balance;
  final String currency;
  final String icon;
  final Color color;
  final bool isActive;
  final int userId;
  final DateTime createdAt = DateTime.now();
  final DateTime updatedAt = DateTime.now();

  AccountModel({
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

  factory AccountModel.fromMap(Map<String, dynamic> map) {
    return AccountModel(
      id: map['id'],
      name: map['name'],
      accountType: map['accountType'],
      balance: map['balance'],
      currency: map['currency'],
      icon: map['icon'],
      color: EnumColors.hexToColor(map['color']),
      isActive: map['isActive'] == 1 ? true : false,
      userId: map['userId'],
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
      'color': color.toString().toUpperCase().replaceAll('#', ''),
      'isActive': isActive ? 1 : 0,
      'userId': userId,
    };
  }

  AccountModel copyWith({
    int? id,
    String? name,
    String? accountType,
    double? balance,
    String? currency,
    String? icon,
    Color? color,
    bool? isActive,
    int? userId,
  }) {
    return AccountModel(
      id: id ?? this.id,
      name: name ?? this.name,
      accountType: accountType ?? this.accountType,
      balance: balance ?? this.balance,
      currency: currency ?? this.currency,
      icon: icon ?? this.icon,
      color: color ?? this.color,
      isActive: isActive ?? this.isActive,
      userId: userId ?? this.userId,
    );
  }
}
