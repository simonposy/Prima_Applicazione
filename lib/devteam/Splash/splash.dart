
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/painting/gradient.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment. topCenter,
              end: Alignment. bottomCenter,
              colors: [Colors.blue.shade900, Color.fromARGB(140, 0, 0, 172)],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('Superior University',
              style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),),
              Text('e-Learning Platform',
              style: TextStyle(color: Colors.white, fontSize: 22)),
              SizedBox(height: 400),
              Text('Copyright © 2022 Superior University',
              style: TextStyle(color: Colors.white),),
              Text('All Right Reserved',
              style: TextStyle(color:Colors.white),),
              SizedBox(height: 50)
            ],
          ),
    )
    );
  }
}
