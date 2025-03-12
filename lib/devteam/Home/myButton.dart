import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final String name;

  MyButton({required this.text, required this.onPressed, required this.name});
  //Come parametri ha bisogno di un testo con il nome del file dell icona che vogliamo inserire
  // una funzione di ciò che fa quando premuto,e un testo scritto sotto il pulsante
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
      width: 150.0,
      height: 150.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue.shade900,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          padding: EdgeInsets.all(16.0),
        ),
        onPressed: onPressed,
        child: Image.asset(text),
      ),
    ),
        Text(name,
        style: const TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 25
        )

        )
      ],

    );

  }
}