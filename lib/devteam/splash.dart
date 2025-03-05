
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:prima_applicazione/MyButton.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:prima_applicazione/login/loginpage.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
        useMaterial3: true,
      ),
      home: const MySplash(title: 'QuickCare'),
    );
  }
}

class MySplash extends StatefulWidget {
  const MySplash({super.key, required this.title});
  final String title;
  @override
  State<MySplash> createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    if (_counter>0) {
      setState(() {
        _counter--;
      });
    } else {
      print("Errore");
    }
  }

  void _resetCountet() {
    setState(() {
      _counter=0;
    });

  }

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
                style: TextStyle(
                    color: Colors.red
                ),
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyButton(
                      onPressed: _decrementCounter,
                      child: const Icon(Icons.accessibility)
                  ),
                  const SizedBox(width: 20),
                  MyButton(
                      onPressed: _resetCountet,
                      child: const Icon(Icons.lock_reset)
                  ),
                  const SizedBox(width: 20),
                  MyButton(
                    onPressed: _incrementCounter,
                    child: const Icon(Icons.add),
                  ),
                  const SizedBox(width: 20),
                  MyButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const LoginPage())
                        );
                      },
                      child: const Icon(Icons.edit)
                  )
                ],
              )
            ],
          ),
        )
    );
  }
}
