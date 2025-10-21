import 'package:flutter/material.dart';

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
  final List<Color> _colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.purple,
    Colors.yellow,
    Colors.cyan,
    Colors.pink,
  ];
  Color? _selectedColor;

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
                    spacing: 8.75,
                    children: _colors
                        .map(
                          (color) => GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectedColor = color;
                              });
                            },
                            child: Container(
                              width: 18.5,
                              height: 18.5,
                              decoration: BoxDecoration(
                                color: color,
                                shape: BoxShape.circle,
                                border: _selectedColor == color
                                    ? Border.all(color: Colors.black, width: 2)
                                    : null,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
