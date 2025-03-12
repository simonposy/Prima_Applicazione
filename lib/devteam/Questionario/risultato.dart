import 'package:flutter/material.dart';
import 'package:prima_applicazione/devteam/Bottoni/backHome.dart';
import 'package:prima_applicazione/devteam/Home/homepage.dart';
import 'package:prima_applicazione/devteam/Profilo/myRettangolo.dart';

class Risultato extends StatelessWidget {
  final String ans;
  const Risultato({super.key, required this.ans});


  @override
  Widget build(BuildContext context) {
    Map<String, String> descrizioneMaterie = {
      "Ingegneria":
      "L'Ingegneria è un campo disciplinare che applica principi scientifici, matematici e tecnologici per progettare, sviluppare, testare e migliorare dispositivi, strutture e sistemi. Gli ingegneri utilizzano il pensiero critico e analitico per risolvere una vasta gamma di problemi pratici in vari settori come le costruzioni, l'elettronica, l'automotive, l'energia e la produzione industriale. Gli ingegneri sono fondamentali per il progresso tecnologico e per la creazione di soluzioni che migliorano la qualità della vita.",

      "Psicologia":
      "La Psicologia è la scienza che studia il comportamento umano e i processi mentali, come percezione, memoria, emozioni, apprendimento e pensiero. Si occupa di come gli individui pensano, agiscono e interagiscono con gli altri, sia a livello individuale che sociale. I professionisti in psicologia esplorano anche i disturbi mentali, le problematiche comportamentali e l'impatto di vari fattori sociali, culturali ed emozionali sulla mente umana. La psicologia si applica in molti ambiti, come la clinica, l'educazione, la salute mentale e le risorse umane.",

      "Matematica":
      "La Matematica è la scienza che studia le strutture astratte, le quantità, le forme e le relazioni. Essa si divide in diverse branche, tra cui l'algebra, la geometria, la statistica, il calcolo e la teoria dei numeri, e offre strumenti per analizzare e modellizzare fenomeni naturali e sociali. La matematica è un linguaggio universale che si applica in tutte le scienze e nelle tecnologie, ed è essenziale per il progresso scientifico, economico e tecnologico. I matematici usano modelli e teorie per risolvere problemi complessi in numerosi settori.",

      "Lettere e Comunicazione":
      "Il corso di Lettere e Comunicazione esplora il mondo della cultura, delle arti, della letteratura e delle scienze umane, con l'obiettivo di analizzare e comprendere i fenomeni sociali, storici e culturali. Gli studenti studiano i testi letterari, la filosofia, la storia, la sociologia, la linguistica e le forme di comunicazione verbale e non verbale. La formazione in Lettere e Comunicazione prepara a carriere che richiedono capacità critiche, analitiche e creative, come quelle nel giornalismo, nella pubblicità, nelle relazioni pubbliche e nella scrittura.",

      "Medicina":
      "La Medicina è la scienza e la pratica della diagnosi, cura e prevenzione delle malattie, nonché del miglioramento della salute generale degli individui. Essa coinvolge la conoscenza approfondita della biologia umana, delle patologie, delle terapie e delle tecniche chirurgiche. I medici e i professionisti sanitari utilizzano un approccio scientifico e pratico per trattare malattie e lesioni, oltre a sviluppare nuovi trattamenti e innovazioni terapeutiche. La medicina si suddivide in diverse specializzazioni, tra cui la chirurgia, la medicina interna, la pediatria, la neurologia, e la medicina d'emergenza.",

      "Informatica":
      "L'Informatica è la scienza che si occupa dello studio dei sistemi computazionali e dei processi di elaborazione delle informazioni. Include la progettazione e lo sviluppo di software, l'architettura dei computer, l'intelligenza artificiale, la sicurezza informatica e le reti. Gli informatici studiano algoritmi, strutture dati, linguaggi di programmazione e tecniche di risoluzione dei problemi per costruire sistemi in grado di elaborare dati e prendere decisioni. L'informatica è alla base di tutte le innovazioni tecnologiche moderne, dai dispositivi mobili all'analisi dei Big Data, e ha un impatto significativo sulla vita quotidiana.",

      "Elettronica e Meccanica":
      "L'Elettronica e la Meccanica sono due campi che si occupano della progettazione, costruzione e manutenzione di dispositivi e macchinari che utilizzano componenti elettronici e meccanici. L'elettronica si concentra sull'utilizzo di circuiti e sistemi elettrici per controllare dispositivi, mentre la meccanica si occupa della progettazione di macchine e strutture fisiche. I professionisti in questi settori creano tecnologie avanzate, come i dispositivi elettronici, le automobili, le apparecchiature industriali, e le macchine automatiche. L'integrazione di elettronica e meccanica è essenziale per la creazione di dispositivi complessi e intelligenti.",

      "Design e Tecnologia":
      "Il Design e la Tecnologia si concentrano sulla progettazione di prodotti e soluzioni innovative che siano esteticamente piacevoli, funzionali e realizzabili. Gli studenti di questo corso esplorano come combinare l'aspetto estetico con la funzionalità tecnologica, utilizzando tecniche avanzate di progettazione e tecnologia per creare nuovi oggetti e sistemi. Il design è fondamentale in settori come il product design, l'architettura, il design industriale e il design dell'interazione. La tecnologia supporta il design attraverso l'uso di software di modellazione 3D, prototipi digitali e strumenti avanzati di produzione, creando prodotti che rispondono a bisogni specifici della società."
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text("Il tuo risultato"),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            width: 300, // Impostato a una larghezza più adeguata
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blue.shade900,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                  width: double.maxFinite,
                  child: Center(
                    child: Text(
                      "La Facoltà in cui sei più propenso è",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity-2,
                  height: 45,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Text(
                    "$ans".toUpperCase(),
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  child: Text(
                    descrizioneMaterie[ans]!,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w100,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              MyBackHome(),
            ],
          )
        ],
      ),
    );
  }
}
