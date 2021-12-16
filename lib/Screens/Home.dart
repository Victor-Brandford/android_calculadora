import 'package:android_calculadora/Components/but%C3%A3o.dart';
import 'package:flutter/material.dart';

class calc_Page extends StatefulWidget {
  const calc_Page({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return calc_PageState();
  }
}

class calc_PageState extends State<calc_Page> {
   String historico ='';
   String Expressao = '';

  void NumeroClique (String text){
    setState(() {
      Expressao += text;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Container(
                child : Text(historico,
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                alignment: Alignment(1,1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                child : Text(Expressao,
                  style: TextStyle(
                    fontSize: 60,
                  ),
                ),
                alignment: Alignment(1,2),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                butoes_telcado(Texto: 'AC',cor: 0xFFC0C0C0,key: null,),
                butoes_telcado(Texto: 'C',cor: 0xFFC0C0C0, key: null,),
                butoes_telcado(Texto: '%',cor: 0xFFC0C0C0, key: null,),
                butoes_telcado(Texto: '/',cor: 0xFFC0C0C0, key: null,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                butoes_telcado(Texto: '7',cor: 0xFFC0C0C0, key: null,callback: NumeroClique,),
                butoes_telcado(Texto: '8',cor: 0xFFC0C0C0, key: null,callback: NumeroClique,),
                butoes_telcado(Texto: '9',cor: 0xFFC0C0C0, key: null,callback: NumeroClique,),
                butoes_telcado(Texto: 'X',cor: 0xFFC0C0C0, key: null,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                butoes_telcado(Texto: '4',cor: 0xFFC0C0C0, key: null,callback: NumeroClique,),
                butoes_telcado(Texto: '5',cor: 0xFFC0C0C0, key: null,callback: NumeroClique,),
                butoes_telcado(Texto: '6',cor: 0xFFC0C0C0, key: null,callback: NumeroClique,),
                butoes_telcado(Texto: '-',cor: 0xFFC0C0C0, key: null,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                butoes_telcado(Texto: '1',cor: 0xFFC0C0C0, key: null,callback: NumeroClique,),
                butoes_telcado(Texto: '2',cor: 0xFFC0C0C0, key: null,callback: NumeroClique,),
                butoes_telcado(Texto: '3',cor: 0xFFC0C0C0, key: null,callback: NumeroClique,),
                butoes_telcado(Texto: '+',cor: 0xFFC0C0C0, key: null,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                butoes_telcado(Texto: '.',cor: 0xFFC0C0C0, key: null,),
                butoes_telcado(Texto: '0',cor: 0xFFC0C0C0, key: null, callback: NumeroClique,),
                butoes_telcado(Texto: '00',cor: 0xFFC0C0C0, key: null,callback: NumeroClique,),
                butoes_telcado(Texto: '=',cor: 0xFFC0C0C0, key: null,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
