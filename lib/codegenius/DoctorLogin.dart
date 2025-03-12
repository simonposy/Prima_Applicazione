import 'package:flutter/material.dart';

class DoctorLogin extends StatefulWidget {
  const DoctorLogin({super.key});

  @override
  State<DoctorLogin> createState() => _DoctorLoginState();
}

class _DoctorLoginState extends State<DoctorLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.white),
        backgroundColor: Colors.white,
        body: Column(children: [
          Image.asset("assets/codegenius/logo_testuale.png"),
          SizedBox(height: 20),
          Center(
            child: Container(
                alignment: Alignment.center,
                width: 400,
                decoration: new BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(3, 3),
                    ),
                  ],
                ),
                child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                            width: 350,
                            child: Column(children: [
                              SizedBox(height: 10),
                              Text(
                                "Login Dottore",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              SizedBox(height: 10),
                              TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: 'Inserisci ID Ospedale...',
                                      suffixIcon: Icon(
                                        Icons.edit,
                                        color: Colors.red,
                                      ))),
                              SizedBox(height: 10),
                              TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: 'Inserisci username...',
                                      suffixIcon: Icon(
                                        Icons.edit,
                                        color: Colors.red,
                                      ))),
                              SizedBox(height: 10),
                              TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: 'Inserisci password...',
                                      suffixIcon: Icon(
                                        Icons.edit,
                                        color: Colors.red,
                                      ))),
                              SizedBox(height: 20),
                              ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                      WidgetStatePropertyAll(Colors.white60)),
                                  onPressed: () => print(""),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("Login",
                                            style:
                                            TextStyle(fontWeight: FontWeight.bold,color: Colors.redAccent))
                                      ])),
                              SizedBox(height: 20)
                            ]))
                      ],
                    ))),
          )
        ]));
  }
}