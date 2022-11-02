import 'package:flutter/material.dart';
class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key, required String title}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  ///cuadros de texto a ingresar
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _repPassword = TextEditingController();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget> [
                const Image(image: AssetImage('assets/images/logo_256.png')),

                const SizedBox(
                  height: 16.0,
                ),
                TextFormField(
                  controller: _name,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Nombre: '),
                  keyboardType: TextInputType.text,
                ),

                const SizedBox(
                  height: 16.0,
                ),
                TextFormField(
                  controller: _email,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Correo: '),
                  keyboardType: TextInputType.text,
                ),

                const SizedBox(
                  height: 16.0,
                ),
                TextFormField(
                  controller: _password,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Contraseña: '),
                  keyboardType: TextInputType.text,
                ),

                const SizedBox(
                  height: 16.0,
                ),
                TextFormField(
                  controller: _repPassword,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Confirmar contraseña: '),
                  keyboardType: TextInputType.text,
                ),
              ]
            ),
          )
      ),
    );
  }
}
