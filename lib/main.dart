import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
/**
 * Scaffold
 * Text
 * FlatButton
 * FloatingActionButton
 * ListView
 * ListTile
 * Center
 * Column
 * Row
 */
class _MyHomePageState extends State<MyHomePage> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
      ),

      drawer: _drawer(),

      body: Center(
        child: Form(
          child: Column(
            children: [
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Correo electrónico'
                ),
                validator: (text) {
                  if (text.isEmpty)
                    return 'No puede dejar este campo vacío';
                  return null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
              )
            ],
          ),
        )
      ),

    );
  }

  Widget _drawer() => Drawer(
    child: ListView(
      children: [
        Container(
          height: 200,
          color: Colors.blue,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  child: Text('DE'),
                ),
                Text('Nombre')
              ],
            ),
          ),
        ),

        ListTile(
          title: Text('Cerrar sesión'),
          leading: Icon(Icons.exit_to_app),
          onTap: () {
            
          },
        )
      ],
    ),
  );

  void login() {
    final email = emailController.text;


    //loginService.login(email, password);
  }
}
