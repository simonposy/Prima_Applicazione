import 'package:flutter/material.dart';

class ChiSiamoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chi Siamo'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Padding( // Padding con "P" maiuscola
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Evita che la colonna occupi tutto lo spazio verticale
            crossAxisAlignment: CrossAxisAlignment.center, // Centra il contenuto
            children: [
              Text(
                'Chi Siamo',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center, // Centra il testo
              ),
              SizedBox(height: 10),
              Text(
                "Siamo un gruppo di ragazzi di 16 anni con una passione per la tecnologia e l'istruzione. "
                    "Abbiamo creato questa app per semplificare la ricerca dell'università giusta e aiutare gli studenti "
                    "a organizzare al meglio i loro studi. Crediamo che l'accesso a informazioni chiare e strumenti efficaci "
                    "possa fare la differenza nel percorso accademico di ognuno.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center, // Centra il testo
              ),
              SizedBox(height: 20),
              Text(
                'La Nostra Missione',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center, // Centra il testo
              ),
              SizedBox(height: 10),
              Text(
                "La nostra missione è rendere più facile il passaggio dalla scuola all'università, fornendo supporto pratico "
                    "e funzionalità utili per la gestione del tempo e delle scelte accademiche. "
                    "Unisciti a noi in questo viaggio verso un futuro più organizzato e senza stress! 🚀",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center, // Centra il testo
              ),
            ],
          ),
        ),
      ),
    );
  }
}
