import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Splash extends StatefulWidget {
  const Splash({super.key, required this.title});
  final String title;
  @override
  State<Splash> createState() => _MySplashPageState();
}

class _MySplashPageState extends State<Splash> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Column(

            children: <Widget>[
              const SizedBox(height: 15),
              Image.asset("Logo.png"),
              const SizedBox(height: 300),
             const SizedBox(width: 70),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset("Arrow1.png"),
                const SizedBox(width: 70),
              ],
            ),

              const Text(
                'You have pushed the button this many times:',
                style: TextStyle(
                    color: Colors.red
                ),
              ),
        ],
          )
        ),
        backgroundColor: Colors.red
    );
  }
}