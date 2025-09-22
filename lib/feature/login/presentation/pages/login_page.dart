import 'package:flutter/material.dart';
import 'package:personal_expenses/core/constants/app_routes.dart';
import 'package:personal_expenses/core/constants/global_widgets.dart';
import 'package:personal_expenses/feature/login/data/repository/login_repo_impl.dart';
import 'package:personal_expenses/feature/login/domain/model/user_login.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          vertical: size.height * .05,
          horizontal: size.width * .1,
        ),
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
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      label: Text('Correo electrónico'),
                    ),
                  ),
                  TextField(
                    controller: _passwordController,
                    obscureText: isObscure,
                    decoration: InputDecoration(
                      label: Text('Contraseña'),
                      suffixIcon: IconButton(
                        icon: Icon(
                          isObscure ? Icons.visibility : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            isObscure = !isObscure;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 19),
            ElevatedButton(
              onPressed: () async {
                if (_emailController.text.isNotEmpty &&
                    _passwordController.text.isNotEmpty) {
                  final userLogin = UserLogin(
                    email: _emailController.text,
                    password: _passwordController.text,
                  );
                  final flag = await LoginRepoImpl().isUserRegistered(
                    userLogin,
                  );
                  if (flag) {
                    _nextPage();
                  } else {
                    _showMessage('El usuario no esta registrado');
                  }
                } else {
                  _showMessage('Llene todos los campos por favor.');
                }
              },
              child: Text('Iniciar sesión'),
            ),
            TextButton(
              child: Text('Registrarse'),
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.newUser);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _showMessage(String message) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(GlobalWidgets().snackMessage(context, message));
  }

  void _nextPage() {
    Navigator.pushNamed(context, '/home');
  }
}
