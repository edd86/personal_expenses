import 'package:personal_expenses/core/constants/constants_app.dart';

enum EnumIcons {
  bank(path: '$svgRoutes/building-solid.svg',name:'Banco'),
  cash(path: '$svgRoutes/wallet-solid.svg',name: 'Efectivo'),
  creditCard(path: '$svgRoutes/credit-solid.svg', name:'Tarjeta de Crédito'),
  saving(path: '$svgRoutes/piggy-solid.svg',name: 'Ahorro');

  final String path;
  final String name;

  const EnumIcons({required this.path, required this.name});

  static String getIconPathByName(String iconName) {
    return EnumIcons.values.firstWhere(
      (e) => e.name.toLowerCase() == iconName.toLowerCase(),
      orElse: () => EnumIcons.bank,
    ).path;
}


}