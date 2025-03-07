import 'package:flutter/material.dart';
import 'package:prima_applicazione/Mappa/mappa.dart';

import 'package:prima_applicazione/devteam/Profilo/profilo.dart';
import 'package:prima_applicazione/devteam/splash.dart';
import 'package:prima_applicazione/login/loginpage.dart';
import 'myButton.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
          child: ListView(
            children: [Column(
              spacing: 20,

              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 30,
                  children: [
                    MyButton(
                      text: 'iconaAiuto.png',
                      onPressed: () {
                        // Azione da eseguire quando il pulsante viene premuto
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Splash())
                        );
                      },
                      name: 'AIUTO',
                    ),
                    MyButton(
                      text: 'iconaForum.png',
                      onPressed: () {
                        // Azione da eseguire quando il pulsante viene premuto
                        print('Pulsante premuto!');
                      },
                      name: "FORUM",
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 30,
                  children: [
                    MyButton(
                      text: 'iconaMappa.png',
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Mappa())
                        );
                      },
                      name: 'MAPPA',
                    ),
                    MyButton(
                      text: 'iconaCalendario.png',
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginPage())
                        );
                      },
                      name: 'CALENDARIO',
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 30,
                  children: [
                    MyButton(
                      text: 'iconaChiSiamo.png',
                      onPressed: () {
                        // Azione da eseguire quando il pulsante viene premuto
                        print('Pulsante premuto!');
                      },
                      name: 'CHI SIAMO?',
                    ),
                    MyButton(
                      text: 'iconaProfilo.png',
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ProfiloPage(profileName: "Mario Rossi",))
                        );
                      },
                      name: 'PROFILO',
                    ),
                  ],
                ),
              ])],
          ))
    );
  }
}
