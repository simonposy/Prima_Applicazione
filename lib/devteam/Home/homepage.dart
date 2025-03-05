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
        child: MyButton(
          text: 'Cliccami',
          onPressed: () {
            // Azione da eseguire quando il pulsante viene premuto
            print('Pulsante premuto!');
          },
        ),
      ),
    );
  }
}