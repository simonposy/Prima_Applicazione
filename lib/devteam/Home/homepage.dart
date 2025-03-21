import 'package:flutter/material.dart';
import 'package:prima_applicazione/devteam/Calendario/Caledario.dart';
import 'package:prima_applicazione/devteam/Mappa/mappa.dart';
import 'package:prima_applicazione/devteam/Questionario/Questionario.dart';
import 'package:prima_applicazione/devteam/ChiSiamo/ChiSiamo.dart';

import 'package:prima_applicazione/devteam/Profilo/profilo.dart';
import 'package:prima_applicazione/devteam/Splash/splash.dart';
import 'package:prima_applicazione/devteam/login/loginpage.dart';
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
                Column(
                  children: [
                    SizedBox(
                      child: Text("UNI-MATE",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w900,
                        ) ,
                      ),
                    ),
                  ],
                ),
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
                            MaterialPageRoute(builder: (context) => const Questionario())
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
                            MaterialPageRoute(builder: (context) => const Calendario())
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ChiSiamoPage())
                        );
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
