import 'package:android_calculadora/Components/but%C3%A3o.dart';
import 'package:flutter/material.dart';

class calc_Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return calc_PageState();
  }
}

class calc_PageState extends State<calc_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            butoes_telcado(Texto: 'AC'),
            butoes_telcado(Texto: 'C'),
            butoes_telcado(Texto: '%'),
            butoes_telcado(Texto: '/'),
          ],
        ),
      ),
    );
  }
}
