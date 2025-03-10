import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:prima_applicazione/MyButton.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:prima_applicazione/login/loginpage.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfiloPage extends StatefulWidget {
  const ProfiloPage({super.key, required this.title});
  final String title;
  @override
  State<ProfiloPage> createState() => _MyProfiloPageState();
}

class _MyProfiloPageState extends State<ProfiloPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
          systemOverlayStyle: SystemUiOverlayStyle.light,

        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Image.asset('profilo.png'),
              const Text(
                'Università',
                style: TextStyle(
                    color: Colors.black
                ),
              ),
              const TextField(),

              const Text(
                'Facoltà',
                style: TextStyle(
                    color: Colors.black
                ),
              ),
              const TextField(),


              const Text(
                'N. Matricola',
                style: TextStyle(
                    color: Colors.black
                ),
              ),
              const TextField(),


              const Text(
                'Titolo di studio',
                style: TextStyle(
                    color: Colors.black
                ),
              ),
              const TextField(),
            ],

          ),
        )
    );
  }
}
