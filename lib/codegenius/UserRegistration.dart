import 'package:flutter/material.dart';

class UserRegistration extends StatefulWidget {
  const UserRegistration({super.key});

  @override
  State<UserRegistration> createState() => _UserRegistrationState();
}

class _UserRegistrationState extends State<UserRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.white),
        backgroundColor: Colors.white,
        body: Center(
            child: Column(
          children: [
            Image.asset("assets/codegenius/logo.png"),
            //Icon(Icons.access_alarms_outlined),
            SizedBox(
                width: 350,
                child: Column(children: [
                  SizedBox(height: 80),
                  TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Inserisci il nome...',
                          suffixIcon: Icon(Icons.edit))),
                  SizedBox(height: 10),
                  TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Inserisci il cognome...',
                          suffixIcon: Icon(Icons.edit))),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.calendar_today),
                      hintText: "Inserisci data di nascita...",
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.person),
                      hintText: "Inserisci il codice fiscale...",
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("Sesso"),
                  SizedBox(height: 5),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    SizedBox(
                      height: 50,
                      width: 150,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  WidgetStatePropertyAll(Colors.white60)),
                          onPressed: () => print(""),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Uomo",
                                style: TextStyle(color: Colors.blue),
                              ),
                              Icon(color: Colors.blue, Icons.male)
                            ],
                          )),
                    ),
                    SizedBox(width: 10),
                    SizedBox(
                        height: 50,
                        width: 150,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    WidgetStatePropertyAll(Colors.white60)),
                            onPressed: () => print(""),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Donna",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.pinkAccent)),
                                  Icon(color: Colors.pinkAccent, Icons.female)
                                ])))
                  ]),
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
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.redAccent))
                          ]))
                ]))
          ],
        )));
  }
}