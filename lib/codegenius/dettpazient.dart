import 'package:flutter/material.dart';
import 'package:prima_applicazione/codegenius//vispaziente.dart';
import 'package:prima_applicazione/codegenius/DoctorLogin.dart';
import 'package:prima_applicazione/codegenius/GoogleAccessRegistration.dart';

class dettpazient extends StatefulWidget {
  const dettpazient({super.key});
  @override
  State<dettpazient> createState() => _dettpazientState();
}

class _dettpazientState extends State<dettpazient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.white),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Center(
                child: Column(children: [
                  SizedBox(height: 20),
                  SizedBox(
                      width: 350,
                      child: Column(children: [
                        Container(
                            width: 250,
                            decoration: new BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 5,
                                  offset:
                                  Offset(3, 3),
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
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
                                        MaterialPageRoute(builder: (context) => const GoogleAccessRegistration())
                                    );
                                  },
                                  style: ButtonStyle(
                                      backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.red)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        " Utente ",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const DoctorLogin())
                                    );
                                  },
                                  style: ButtonStyle(
                                      backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.red)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        "Dottore",
                                        textAlign: TextAlign.center,
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