import 'package:flutter/material.dart';

class MyLogIn extends StatefulWidget {
  const MyLogIn({super.key});

  @override
  State<MyLogIn> createState() => _MyLogInState();
}

class _MyLogInState extends State<MyLogIn> {
  final user = TextEditingController();
  final password = TextEditingController();

  @override
  void dispose() {
    user.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white, //color de backgorund
      body: Container(
        // ignore: prefer_const_constructors
        decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [
          Color.fromARGB(255, 144, 154, 211),
          // Color.fromARGB(255, 100, 113, 182),
          //Color.fromARGB(255, 90, 107, 203),
          Color.fromARGB(255, 81, 98, 195)
        ], begin: Alignment.topCenter)),
        child: ListView(
          padding: const EdgeInsets.symmetric(
              horizontal: 30.0, vertical: 100.0), //anadir padding
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //imagen
                const CircleAvatar(
                  radius: 110.0,
                  backgroundColor: Colors.transparent,
                  backgroundImage:
                      AssetImage('images/bookish_transparente.png'),
                ),
                //Titulo del form
                const Text(
                  'Log In',
                  style: TextStyle(
                      fontFamily: 'FredokaOne',
                      fontSize: 40.0,
                      color: Colors.white),
                ),
                //espacio?
                const SizedBox(
                  height: 30.0,
                ),
                //Campos del formulario
                const Text(
                  'Nombre de usuario',
                  style: TextStyle(
                      fontFamily: 'FredokaOne',
                      fontSize: 20.0,
                      color: Colors.white),
                  textAlign: TextAlign.left,
                ),
                //user field
                TextField(
                  controller: user,
                  enableInteractiveSelection:
                      false, //desactivar interactividad por defecto
                  autofocus: true, //activar focus por defecto
                  textCapitalization: TextCapitalization.sentences,
                  style: TextStyle(fontFamily: 'Fresca'),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      suffixIcon: const Icon(Icons.person),
                      hintText: 'Usuario',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                  /*onSubmitted: (value) {
                      user = value;
                    }*/
                ),
                const SizedBox(
                  height: 15.0,
                ),
                const Text(
                  'Contraseña',
                  style: TextStyle(
                      fontFamily: 'FredokaOne',
                      fontSize: 20.0,
                      color: Colors.white),
                ),
                //password field
                TextField(
                  controller: password,
                  enableInteractiveSelection:
                      false, //desactivar interactividad por defecto
                  autofocus: true, //activar focus por defecto
                  textCapitalization: TextCapitalization.sentences,
                  style: TextStyle(fontFamily: 'Fresca'),
                  obscureText: true,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      suffixIcon: const Icon(Icons.password),
                      hintText: 'Contraseña',
                      //labelText: 'Contraseña',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )),
                  /*onSubmitted: (value) {
                     password = value;
                    }*/
                ),
                const SizedBox(
                  height: 40.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                        child: MaterialButton(
                            color: Colors.indigo,
                            height: 50.0,
                            minWidth: 155.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            child: const Text(
                              'Aceptar',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25.0,
                                  fontFamily: 'FredokaOne'),
                            ),
                            onPressed: () {
                              print(
                                  'El usuario es ${user.text} y la contraseña es ${password.text}');
                            })),
                    Flexible(
                      child: MaterialButton(
                          onPressed: () {
                            print('Ud. ha salido del sistema');
                          },
                          color: Colors.white,
                          height: 50.0,
                          minWidth: 155.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          child: const Text(
                            'Salir',
                            style: TextStyle(
                                color: Colors.indigo,
                                fontSize: 25.0,
                                fontFamily: 'FredokaOne'),
                          )),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
