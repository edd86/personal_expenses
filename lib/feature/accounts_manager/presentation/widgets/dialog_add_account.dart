
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:personal_expenses/core/constants/enum_color.dart';
import 'package:personal_expenses/core/constants/enum_icons.dart';

class DialogAddAccount extends StatefulWidget {
  const DialogAddAccount({super.key});

  @override
  State<DialogAddAccount> createState() => _DialogAddAccountState();
}

class _DialogAddAccountState extends State<DialogAddAccount> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _initialBalanceController = TextEditingController();
  String? _dropDownValue;
  final List<String> _accountTypes = [
    'Cuenta Bancaria',
    'Ahorro',
    'Tarjeta de Crédito',
    'Efectivo',
    'Inversiones',
  ];

  EnumColors _colorSelected = EnumColors.skyBlue;
  EnumIcons _iconSelected = EnumIcons.bank;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Agregar Cuenta'),
      content: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(label: Text('Nombre')),
              ),
              DropdownButton(
                value: _dropDownValue,
                hint: Text('Tipo de Cuenta'),
                items: _accountTypes
                    .map(
                      (type) =>
                          DropdownMenuItem(value: type, child: Text(type)),
                    )
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    _dropDownValue = value;
                  });
                },
              ),
              TextFormField(
                controller: _initialBalanceController,
                decoration: InputDecoration(label: Text('Balance actual')),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Wrap(
                    spacing: 25.75,
                    children: EnumColors.values.map((enumColor) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _colorSelected = enumColor;
                          });
                        },
                        child: Container(
                          width: 20.5,
                          height: 20.5,
                          decoration: BoxDecoration(
                            color: enumColor.color,
                            shape: BoxShape.circle,
                            border: _colorSelected == enumColor
                                ? Border.all(color: Colors.black, width: 2)
                                : null,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Wrap(
                    spacing: 20.5,
                    children: EnumIcons.values.map((enumIcon) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _iconSelected = enumIcon;
                          });
                        },
                        child: Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            color: _iconSelected == enumIcon
                                ? _colorSelected.color.withAlpha(80)
                                : Colors.transparent,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              enumIcon.path,
                              height: 20,
                              width: 20,
                              colorFilter: _iconSelected == enumIcon
                                  ? ColorFilter.mode(
                                      _colorSelected.color,
                                      BlendMode.srcIn,
                                    )
                                  : null,
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
              SizedBox(height: 15),
              ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.blueAccent),
                  foregroundColor: WidgetStatePropertyAll(Colors.blueAccent),
                ),
                onPressed: () {},
                label: Text(
                  'Registrar cuenta',
                  style: TextStyle(color: Colors.white),
                ),
                icon: Icon(Icons.save, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
