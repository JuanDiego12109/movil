import 'package:flutter/material.dart';
import 'package:movil_app/models/users.dart';
import 'package:movil_app/pages/login_page.dart';
import 'dart:convert';
import'package:shared_preferences/shared_preferences.dart';

import '../repository/firebase_api.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key, required String title}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final FirebaseApi _firebaseApi = FirebaseApi();


  ///cuadros de texto a ingresar
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _repPassword = TextEditingController();

  String _data = "Informacion: ";

  void _showMessage (String msg){
    final scaffold=ScaffoldMessenger.of(context);
    scaffold.showSnackBar(SnackBar(content: Text(msg),
    action: SnackBarAction(
      label: "Aceptar", onPressed: scaffold.hideCurrentSnackBar),
    ),);



  }

  void saveUser (User user) async {
   /* SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("user", jsonEncode(user));*/
    var result = await _firebaseApi.registerUser(user.email, user.password);
  }

  void _presionButton(){
    setState(() {
      if (_password.text == _repPassword.text) {
        var user = User(_name.text, _email.text, _password.text);
        saveUser(user); 
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
      }else{
        _showMessage("Las contraseñas no coinciden, por favor verifique");
      }
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
          child: Center(
            child: SingleChildScrollView(
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
                  ElevatedButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 18),
                    ),
                    onPressed: (){
                      _presionButton();
                      
                    }, child: const Text("Registrar"),

                  ),

                ]
              ),
            ),
          )
      ),
    );
  }
}
