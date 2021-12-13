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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                butoes_telcado(Texto: 'AC'),
                butoes_telcado(Texto: 'C'),
                butoes_telcado(Texto: '%'),
                butoes_telcado(Texto: '/'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                butoes_telcado(Texto: '7'),
                butoes_telcado(Texto: '8'),
                butoes_telcado(Texto: '9'),
                butoes_telcado(Texto: 'X'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                butoes_telcado(Texto: '4'),
                butoes_telcado(Texto: '5'),
                butoes_telcado(Texto: '6'),
                butoes_telcado(Texto: '-'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                butoes_telcado(Texto: '1'),
                butoes_telcado(Texto: '2'),
                butoes_telcado(Texto: '3'),
                butoes_telcado(Texto: '+'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                butoes_telcado(Texto: '.'),
                butoes_telcado(Texto: '0'),
                butoes_telcado(Texto: '00'),
                butoes_telcado(Texto: '='),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
