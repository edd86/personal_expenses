import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bienvenido',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
            ),
            Image.asset('assets/images/man.png', height: 280),
            Text(
              'Para poder controlar de una forma eficiente tus gastos, necesitas crearte una cuenta de usuario e iniciar sesión',
              textAlign: TextAlign.center,
            ),
            SizedBox(
              width: 250,
              child: Column(
                children: [
                  TextField(controller: _emailController),
                  TextField(controller: _passwordController),
                ],
              ),
            ),
            SizedBox(height: 19),
            ElevatedButton(onPressed: () {}, child: Text('Iniciar sesión')),
            TextButton(onPressed: () {}, child: Text('Registrarse')),
          ],
        ),
      ),
    );
  }
}
