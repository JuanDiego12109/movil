import 'package:flutter/material.dart';
import 'package:movil_app/pages/register_page.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Image(image: AssetImage('assets/images/logo_256.png'),),
              const SizedBox(
                height: 16.0,
              ),
              TextFormField(
                controller: _email,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),labelText: 'Correo'
                ),
                keyboardType: TextInputType.emailAddress,

              ),

              const SizedBox(
                height: 16.0,
              ),

              TextFormField(
                controller: _password,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),labelText: 'Contraseña'
                ),
                keyboardType: TextInputType.text,

              ),
              const SizedBox(
                height: 16.0,),

              ElevatedButton(
                  onPressed: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RegisterPage(title: "title")));
              },
                  child: const Text('Iniciar sesion')),


              TextButton(
                style: TextButton.styleFrom(
                    textStyle: const TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.italic)
                ),
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RegisterPage(title: "title")));
                },
                child: const Text('Registrar'),
              ),


            ],
          ),
        ),
      ),
    );
  }
}

