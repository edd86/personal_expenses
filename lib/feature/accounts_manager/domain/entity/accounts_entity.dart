import 'package:flutter/widgets.dart';

class AccountsEntity {
  final int? id;
  final String name;
  final String accountType;
  final double balance;
  final String currency;
  final String icon;
  final Color  color;
  final bool isActive;
  final int userId;

  AccountsEntity({
    this.id,
    required this.name,
    required this.accountType,
    this.balance = 0.0,
    this.currency = 'BOB',
    required this.icon,
    required this.color,
    this.isActive = true,
    required this.userId,
  });
}
