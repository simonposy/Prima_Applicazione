import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:prima_applicazione/devteam/Profilo/myRettangolo.dart';

class ProfiloPage extends StatefulWidget {
  final String profileName;

  const ProfiloPage({super.key, required this.profileName});

  @override
  State<ProfiloPage> createState() => _MyProfiloPageState();
}

class _MyProfiloPageState extends State<ProfiloPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Profilo"),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: Center(
        child: ListView(
          children: [
            Column(
              children: <Widget>[
                Center(
                  child: Image.asset('profilo.png'),
                ),
                const Text(
                  "Mario Rossi",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
                ),
                SizedBox(height: 25),
                Container(
                  width: 300,
                  height: 330,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade900,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      const Text(
                        'Università',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Myrettangolo(data: "testo"),
                      const Text(
                        'Facoltà',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Myrettangolo(data: "testo"),
                      const Text(
                        'N. Matricola',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Myrettangolo(data: "testo"),
                      const Text(
                        'Titolo di studio',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Myrettangolo(data: "testo"),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
