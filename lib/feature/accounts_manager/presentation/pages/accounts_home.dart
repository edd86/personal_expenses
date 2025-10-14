import 'package:flutter/material.dart';

class AccountsHome extends StatefulWidget {
  const AccountsHome({super.key});

  @override
  State<AccountsHome> createState() => _AccountsHomeState();
}

class _AccountsHomeState extends State<AccountsHome> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Cuentas', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tus Cuentas',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.7),
            ),
            SizedBox(height: 300),
            //Expanded(child: ListView()),
            SizedBox(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Acciones',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.7,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: size.width * .4,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                              Colors.blueAccent,
                            ),
                            foregroundColor: WidgetStatePropertyAll(
                              Colors.white,
                            ),
                          ),
                          onPressed: () {
                            //TODO: Programar el registro de cuentas.
                          },
                          child: Text('Agregar cuenta'),
                        ),
                      ),
                      SizedBox(
                        width: size.width * .4,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                              Colors.lightBlueAccent[50],
                            ),
                            foregroundColor: WidgetStatePropertyAll(
                              Colors.blueAccent,
                            ),
                          ),
                          onPressed: () {
                            //TODO: Programar las transferencias entre cuentas
                          },
                          child: Text('Transferencia'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
