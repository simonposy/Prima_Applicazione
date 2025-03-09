import 'package:flutter/material.dart';
import 'package:prima_applicazione/Questionario/risultato.dart';
import 'mySceltaButton.dart';

class Questionario extends StatefulWidget {
  const Questionario({super.key});


  @override
  _QuestionarioState createState() => _QuestionarioState();
}

class _QuestionarioState extends State<Questionario> {
  List<String> risultati = [
    "Ingegneria",
    "Psicologia",
    "Matematica",
    "Lettere e Comunicazione",
    "Medicina",
    "Informatica",
    "Elettronica e Meccanica",
    "Design e Tecnologia"
  ];
  List<Map<String, dynamic>> domande = [
    {
      'domanda': 'Quale tipo di problema ti piace risolvere di più?',
      'opzioni': [
        'Capire come funzionano le cose e migliorare i processi ',//(Ingegneria)
        'Analizzare il comportamento umano e sociale ',//(Psicologia)
        'Esplorare concetti astratti e teorie logiche ',//(Matematica)
        'Creare e comunicare nuove idee ',//(Lettere, Comunicazione)
        'Studiare il funzionamento del corpo umano ',//(Medicina)
        'Lavorare con tecnologie innovative ',//(Informatica)
        'Progettare sistemi complessi ',//(Elettronica, Meccanica)
        'Migliorare la vita quotidiana delle persone '//(Tecnologia, Design)
      ]
    },
    {
      'domanda': 'Quale attività ti diverte di più?',
      'opzioni': [
        'Smontare e costruire oggetti, programmare, risolvere problemi tecnici',
        'Osservare il comportamento delle persone e capire come pensano',
        'Risolvere enigmi logici o matematici complessi',
        'Scrivere, raccontare storie o progettare contenuti visivi',
        'Studiare la natura e gli esseri viventi',
        'Progettare e sviluppare giochi o applicazioni',
        'Discutere idee teoriche o filosofiche',
        'Esplorare nuove forme di comunicazione e arte'
      ]
    },
    {
      'domanda': 'Se dovessi scegliere un ambiente di lavoro ideale, quale sarebbe?',
      'opzioni': [
        'Un laboratorio o un’azienda tecnologica',
        'Un ufficio in cui interagisco con persone e analizzo dati',
        'Un’aula universitaria o un centro di ricerca teorica',
        'Uno studio creativo o un giornale',
        'Un ospedale o una clinica',
        "Un'azienda di consulenza tecnologica",
        "Un'agenzia di design o comunicazione",
        'Un centro di ricerca per l’intelligenza artificiale'
      ]
    },
    {
      'domanda': 'Quale materia scolastica preferisci?',
      'opzioni': [
        'Fisica, Informatica, Tecnologia',
        'Storia, Psicologia, Sociologia',
        'Matematica, Filosofia, Logica',
        'Italiano, Arte, Comunicazione',
        'Scienze, Chimica, Biologia',
        'Economia, Statistica, Geografia',
        'Educazione fisica, Sport, Biomeccanica',
        'Musica, Teatro, Danza'
      ]
    },
    {
      'domanda': 'Quale sfida sceglieresti?',
      'opzioni': [
        'Progettare una macchina o un’app che risolva un problema',
        'Capire come le persone prendono decisioni e migliorare la società',
        'Dimostrare una teoria matematica complessa o fare una grande scoperta scientifica',
        'Scrivere un libro, dirigere un film o creare un’opera artistica',
        'Curare una malattia o scoprire un nuovo trattamento medico',
        'Progettare una soluzione tecnologica per ridurre l’impatto ambientale',
        'Risolvere un problema economico globale',
        'Sviluppare nuove forme di intrattenimento digitale'
      ]
    }
  ];
  List<int> punti =List.filled(8,0);
  int domandaind=0;
  int indMax=0;
  bool Finito=false;
  void scelta(int i) {
    setState(() {
      punti[i]++;
      if(domandaind< domande.length-1){
      domandaind++;
      }
      else{
        Finito=true;
        int ansInd = Trova();
        String ans = risultati[ansInd];
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Risultato(ans: ans))
        );
        print(risultati[ansInd]);
      }
    });
  }

  int Trova(){
    for(int i=0; i<punti.length;i++){
      if(punti[i]>punti[indMax]){
        indMax=i;
      }
    }
    return indMax;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Questionario"),
      ),
      body: Center(
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: Text(
                    domande[domandaind]['domanda'],
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                    )
                    ),
                ),
                for (int i = 0; i < domande[domandaind]['opzioni'].length; i++)
                  SceltaButton(
                    testo: domande[domandaind]['opzioni'][i], // Opzione corrente
                    onPressed: () {
                      scelta(i); // Chiama la funzione di scelta
                    },
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
