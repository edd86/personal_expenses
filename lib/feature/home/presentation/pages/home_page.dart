import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Finanzas',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          automaticallyImplyLeading: false,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            vertical: size.height * .01,
            horizontal: size.width * .05,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: size.width * .4,
                    height: size.height * .1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Ingreso Mes',
                          style: TextStyle(
                            fontSize: 15.85,
                            color: Colors.black54,
                          ),
                        ),
                        Text(
                          'Bs. 2.500.6',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 23.75,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: size.width * .4,
                    height: size.height * .1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Gasto Mes',
                          style: TextStyle(
                            fontSize: 15.85,
                            color: Colors.black54,
                          ),
                        ),
                        Text(
                          'Bs. 2.500.6',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 23.75,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * .1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Saldo actual',
                      style: TextStyle(fontSize: 15.85, color: Colors.black54),
                    ),
                    Text(
                      'Bs. 2.500.6',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 23.75,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * .3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Gastos por categoría',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.7,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Ver todo',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Bs. 2.500.6',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 23.75,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * .3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Transacciones recientes',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.7,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
