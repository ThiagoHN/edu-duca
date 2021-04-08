import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  static const routeName = 'Tela_principal';

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> globalKey = GlobalKey();

  bool esta_logando = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.purple[700],
                Colors.indigo[500],
              ],
            )),
          ),
          Center(
            child: Card(
              elevation: 4,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    children: [
                      
                      Text(
                        'Edu Duca',
                        style: TextStyle(
                          fontSize: 40,
                          fontFamily: 'Times New Rome',
                        ),
                      ),
                      
                      const SizedBox(height: 20),

                      if(esta_logando) 
                        TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(), labelText: 'Nome'),
                          onSaved: (value) {
                            // preco_total = double.parse(value);
                          },
                        ),

                      const SizedBox(height: 20),

                      TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), labelText: 'Email'),
                        onSaved: (value) {
                          // preco_total = double.parse(value);
                        },
                      ),
                      
                      const SizedBox(height: 20),
                      
                      TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), labelText: 'Senha'),
                        onSaved: (value) {
                          // preco_total = double.parse(value);
                        },
                      ),

                      const SizedBox(height: 20),

                      if(esta_logando) 
                        TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(), labelText: 'Confirmar senha'),
                          onSaved: (value) {
                            // preco_total = double.parse(value);
                          },
                        ),

                      const SizedBox(height: 20),

                      Container(
                        width: 200,
                        height: 50,
                        child: ElevatedButton(onPressed: () => {}, child: Text('Acessar')),
                      ),

                      const SizedBox(height: 10),

                      Container(
                        width: 200,
                        height: 50,
                        child: ElevatedButton(onPressed: () => setState(() {esta_logando = !esta_logando;}) , child: Text('Registrar')),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
