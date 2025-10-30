import 'package:flutter/material.dart';

enum EnumColors {
  skyBlue(Color(0xFF14b6eb), 'Celeste'),
  plumb(Color(0xFF364954), 'Plomo'),
  silver(Color(0xFF99aebb), 'Silver'),
  pink(Color(0xFFdb91cd), 'Rosa'),
  darkPink(Color(0xFFa35d96), 'Palo Rosa');

  final Color color;
  final String name;

  const EnumColors(this.color, this.name);

  // Obtener el color
  static Color hexToColor(String hex) {
    dynamic color = hex.toUpperCase().replaceAll('#', '');
    if (color.length == 6) color = 'FF$color';
    return Color(int.parse(color, radix: 16));
  }

  //Obtener el Hexadecimal
  String toHex() {
    return color.toARGB32().toRadixString(16).substring(2).toUpperCase();
  }
}
