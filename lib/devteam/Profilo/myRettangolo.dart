import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Myrettangolo extends StatelessWidget{
  final String data;
  Myrettangolo({required this.data});

  @override
Widget build(BuildContext context){

  return Container(
    width: 300,
    height: 45,
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),

    ),
    child: Text(data,
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w900,
      fontSize: 20,
    ),
      textAlign: TextAlign.center,
    ),
  );

}

}
