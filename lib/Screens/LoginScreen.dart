import 'package:flutter/material.dart';
import 'package:prueba_02/Screens/CuentaScreen.dart';
import 'package:prueba_02/Screens/RegistroScreen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var styleFrom = ElevatedButton.styleFrom(
                  overlayColor: Color.fromARGB(255, 15, 128, 118), 
                  iconColor: const Color.fromRGBO(68, 138, 255, 1), 
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0), 
                  ),
                );
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
          style: TextStyle(
            color: Color.fromARGB(5, 58, 1, 1),
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 216, 103, 37),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color.fromARGB(255, 236, 137, 23), Color.fromARGB(143, 148, 219, 15)], 
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 300,
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5), 
                  borderRadius: BorderRadius.circular(10.0), 
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Correo electrónico',
                    border: InputBorder.none, // Oculta el borde del campo de texto
                  ),
                ),
              ),
              SizedBox(height: 10.0), // Espacio entre los campos de texto
              Container(
                width: 300,
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5), // Color de fondo del contenedor
                  borderRadius: BorderRadius.circular(10.0), // Bordes redondeados del contenedor
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Contraseña',
                    border: InputBorder.none, // Oculta el borde del campo de texto
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 20.0), // Espacio entre los campos de texto y los botones
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CuentaScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  iconColor: Colors.white, 
                  disabledIconColor: Colors.blueAccent, 
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0), 
                  ),
                ),
                child: Text(
                  'Iniciar Sesión',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10.0), 
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegistroScreen()),
                  );
                },
                style: styleFrom,
                child: Text(
                  'Ir a Registro',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
