import 'package:flutter/material.dart';

class ChiSiamoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chi Siamo'),
      ),
      body: Container(

        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                // Card per "Chi Siamo"
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Text(
                          'Chi Siamo',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blueAccent),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Siamo un gruppo di ragazzi con la una passione per la tecnologia e l'istruzione. "
                              "Abbiamo creato questa app per semplificare la ricerca dell'università giusta e aiutare gli studenti "
                              "a organizzare al meglio i loro studi. Crediamo che l'accesso a informazioni chiare e strumenti efficaci "
                              "possa fare la differenza nel percorso accademico di ognuno.",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 20),
                Divider(thickness: 1, color: Colors.grey),

                // Card per "La Nostra Missione"
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Text(
                          'La Nostra Missione',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blueAccent),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "La nostra missione è rendere più facile il passaggio dalla scuola all'università, fornendo supporto pratico "
                              "e funzionalità utili per la gestione del tempo e delle scelte accademiche. "
                              "Unisciti a noi in questo viaggio verso un futuro più organizzato e senza stress! 🚀",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
