import 'package:flutter/material.dart';
import 'package:personal_expenses/feature/user_account/presentation/widgets/custom_label_widget.dart';

class NewUserForm extends StatefulWidget {
  const NewUserForm({super.key});

  @override
  State<NewUserForm> createState() => _NewUserFormState();
}

class _NewUserFormState extends State<NewUserForm> {
  final _formkey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final spacer = SizedBox(height: size.height * .05);
    return Scaffold(
      body: Form(
        key: _formkey,
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(
            vertical: size.height * .01,
            horizontal: size.width * .1,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  label: customLabelWidget(Icons.person, 'Nombre completo'),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor escriba su nombre completo';
                  }
                  return null;
                },
              ),
              spacer,
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  label: customLabelWidget(Icons.email, 'Correo electrónico'),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor escriba su correo electronico.';
                  }
                  return null;
                },
              ),
              spacer,
              TextFormField(
                controller: _passwordController,
                obscureText: isObscure,
                decoration: InputDecoration(
                  label: customLabelWidget(Icons.password, 'Contraseña'),
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
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor escriba su contraseña';
                  }
                  return null;
                },
              ),
              spacer,
              ElevatedButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text('Todo OK')));
                  }
                },
                child: Text('Guardar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
