import 'package:flutter/material.dart';
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
                            MaterialPageRoute(builder: (context) => const HomePage())
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
                        // Azione da eseguire quando il pulsante viene premuto
                        print('Pulsante premuto!');
                      },
                      name: 'MAPPA',
                    ),
                    MyButton(
                      text: 'iconaCalendario.png',
                      onPressed: () {
                        // Azione da eseguire quando il pulsante viene premuto
                        print('Pulsante premuto!');
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
                        // Azione da eseguire quando il pulsante viene premuto
                        print('Pulsante premuto!');
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
