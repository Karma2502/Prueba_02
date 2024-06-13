import 'package:flutter/material.dart';
import 'package:prueba_02/Screens/LoginScreen.dart';

class RegistroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Registro',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blueAccent, 
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blueAccent, Colors.lightBlueAccent], 
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
                    border: InputBorder.none, 
                  ),
                ),
              ),
              SizedBox(height: 20.0), 
              Container(
                width: 300,
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5), 
                  borderRadius: BorderRadius.circular(10.0), 
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Contraseña',
                    border: InputBorder.none, 
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 40.0), 
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  iconColor: Color.fromARGB(207, 4, 30, 51),
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0), 
                  ),
                ),
                child: Text(
                  'Registrarse',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent, 
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
