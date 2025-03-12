import 'package:flutter/material.dart';
import 'package:prima_applicazione/codegenius/UserRegistration.dart';

class GoogleAccessRegistration extends StatefulWidget {
  const GoogleAccessRegistration({super.key});

  @override
  State<GoogleAccessRegistration> createState() =>
      _GoogleAccessRegistrationState();
}

class _GoogleAccessRegistrationState extends State<GoogleAccessRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.white),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Image.asset(
              "assets/codegenius/logo.png",
              alignment: Alignment.center,
            ),
            Center(
                child: Column(children: [
              SizedBox(height: 20),
              SizedBox(
                  width: 350,
                  child: Column(children: [
                    Container(
                        width: 250,
                        decoration: new BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.rectangle,
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0))),
                        child: Column(
                          children: [
                            SizedBox(height: 30),
                            Text(
                              "Login Utente",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const UserRegistration())
                                );
                              },
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white)),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset("assets/codegenius/logo_google.png"),
                                  Text(
                                    "Continua con Google",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 30),
                          ],
                        ))
                  ]))
            ]))
          ],
        ));
  }
}
