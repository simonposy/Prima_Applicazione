import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePageCG extends StatefulWidget {
  const HomePageCG({super.key, required this.title});
  final String title;
  @override
  State<HomePageCG> createState() => _MyHomepageCGState();
}

class _MyHomepageCGState extends State<HomePageCG> {
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
              spacing: 50,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(

                  ),
                  Image.asset("PulsanteProntoSoccorso.png"),
                  Image.asset("PulsanteVisitaSpecialistica.png")
            ])));
  }
}
