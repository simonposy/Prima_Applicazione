import 'package:flutter/material.dart';
import 'package:QuickCare/LoginSelector.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.red, Colors.white],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              child: Image.asset(
                'assets/home.png',
                fit: BoxFit.cover,
              ),
            ), // Logo
            Positioned(
              left: 50,
              right: 50,
              child: Image.asset("assets/logo_testuale.png"),
            ),

            // Freccia per navigazione
            Positioned(
              bottom: 30,
              right: 20,
              child: IconButton(
                icon: Icon(Icons.arrow_forward, color: Colors.red, size: 40),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginSelector())
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
