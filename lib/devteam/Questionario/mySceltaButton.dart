import 'package:flutter/material.dart';

class SceltaButton extends StatelessWidget {
  final String testo;
  final VoidCallback onPressed;
  final double width;
  final double height;

  const SceltaButton({
    super.key,
    required this.testo,
    required this.onPressed,
    this.width = double.maxFinite, // Valore di default per la larghezza
    this.height = 50, // Valore di default per l'altezza
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 16),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.blue.shade900,
          //borderRadius: BorderRadius.circular(8), // angoli arrotondati box
        ),
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white, // Colore del testo
          ),
          child: Text(
            testo,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
