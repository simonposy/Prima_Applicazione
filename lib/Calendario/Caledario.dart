
import 'package:flutter/material.dart';

class Calendario extends StatelessWidget {
  const Calendario({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("Work In Progress"),
    ),
      body: Center(
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  child: Text("Work In progress!!!",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),

                Image.asset(
                  "danger.png",
                  width: 200,
                  height: 200,

                ),


              ],
            )
          ],
        ),
      ),
    );
  }
}