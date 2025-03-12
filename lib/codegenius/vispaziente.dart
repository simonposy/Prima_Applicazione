import 'package:flutter/material.dart';

class ViewPatient extends StatefulWidget {
  const ViewPatient({super.key});
  @override
  State<ViewPatient> createState() => _ViewPatientState();
}

class _ViewPatientState extends State<ViewPatient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.white),
        backgroundColor: Colors.white,
        body: Center(
            child: Column(
              children: [
                Image.asset("assets/codegenius/logo.png"),
                //Icon(Icons.access_alarms_outlined),
                TextButton(

                  onPressed: () => print(""),
                  style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all<Color>(
                Colors.grey)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text(
                    " Paziente ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        height: 60
                     ))],
                  )
                ),
          ],

            )));
  }
}