import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:prima_applicazione/devteam/Home/myButton.dart';
import 'package:prima_applicazione/devteam/login/loginpage.dart';
import 'codegenius/Home.dart';
import 'devteam/Profilo/profilo.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'App Sviluppate'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MyButton(
              text: 'iconaAiuto.png',
              onPressed: () {
                // Azione da eseguire quando il pulsante viene premuto
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Home())
                );
              },
              name: 'Code Genius',
            ),
            MyButton(
              text: 'iconaAiuto.png',
              onPressed: () {
                // Azione da eseguire quando il pulsante viene premuto
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage())
                );
              },
              name: 'Dev Team',
            ),
          ],
        ),
      )
    );
  }
}
