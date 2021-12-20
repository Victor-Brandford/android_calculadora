import 'package:android_calculadora/Components/but%C3%A3o.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class calc_Page extends StatefulWidget {
  const calc_Page({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return calc_PageState();
  }
}

class calc_PageState extends State<calc_Page> {
   //int resultado = 0;
   //int quantidade =0;
   String historico ='';
   String Expressao = '';

  void NumeroClique (String text){
    setState(() {
      Expressao += text;
    });

  }
  void allclear (String text){

    setState(() {
     // if (resultado==0){
     //   quantidade = int.parse(Expressao);

    //}
      historico ='';
      Expressao = '';
    });
  }

  void clear (String text){
    setState(() {
      Expressao = '';
    });
  }

  void igual (String text){
    Parser p = Parser();
    Expression exp = p.parse(Expressao);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    setState(() {
     // if (resultado == quantidade){
        //Expressao = 'numero da pessoa';
     // }else{
        //resultado++;
        historico = Expressao;
        Expressao = eval.toString();
      //}
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Container(
                child : Text(historico,
                  style: TextStyle(
                    fontSize: 30,
                     color: Colors.black.withOpacity(0.4),
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
                butoes_telcado(Texto: 'AC',cor: 0xffFFFFFF, cortexto:0xFFD45E5E, key: null,callback: allclear,),
                butoes_telcado(Texto: 'C',cor: 0xffFFFFFF, cortexto: 0xFFD45E5E, key: null,callback: clear,),
                butoes_telcado(Texto: '%',cor: 0xffFFFFFF, cortexto: 0xFFD45E5E, key: null,callback: NumeroClique,),
                butoes_telcado(Texto: '/',cor: 0xffFFFFFF, cortexto: 0xFFD45E5E, key: null,callback: NumeroClique,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                butoes_telcado(Texto: '7',cor: 0xff686161, cortexto: 0xff000000, key: null,callback: NumeroClique,),
                butoes_telcado(Texto: '8',cor: 0xff686161, cortexto: 0xff000000, key: null,callback: NumeroClique,),
                butoes_telcado(Texto: '9',cor: 0xff686161, cortexto: 0xff000000, key: null,callback: NumeroClique,),
                butoes_telcado(Texto: '*',cor: 0xffFFFFFF, cortexto: 0xffD45E5E, key: null,callback: NumeroClique,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                butoes_telcado(Texto: '4',cor: 0xff686161, cortexto: 0xff000000, key: null,callback: NumeroClique,),
                butoes_telcado(Texto: '5',cor: 0xff686161, cortexto: 0xff000000, key: null,callback: NumeroClique,),
                butoes_telcado(Texto: '6',cor: 0xff686161, cortexto: 0xff000000, key: null,callback: NumeroClique,),
                butoes_telcado(Texto: '-',cor: 0xffFFFFFF, cortexto: 0xffD45E5E, key: null,callback: NumeroClique,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                butoes_telcado(Texto: '1',cor: 0xff686161, cortexto: 0xff000000, key: null,callback: NumeroClique,),
                butoes_telcado(Texto: '2',cor: 0xff686161, cortexto: 0xff000000, key: null,callback: NumeroClique,),
                butoes_telcado(Texto: '3',cor: 0xff686161, cortexto: 0xff000000, key: null,callback: NumeroClique,),
                butoes_telcado(Texto: '+',cor: 0xffFFFFFF, cortexto: 0xffD45E5E, key: null,callback: NumeroClique,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                butoes_telcado(Texto: '.',cor: 0xFF686161, cortexto: 0xff000000, key: null,callback: NumeroClique,),
                butoes_telcado(Texto: '0',cor: 0xFF686161, cortexto: 0xff000000, key: null, callback: NumeroClique,),
                butoes_telcado(Texto: '00',cor: 0xFF686161,cortexto: 0xff000000,  key: null,callback: NumeroClique,),
                butoes_telcado(Texto: '=',cor: 0xffD45E5E, cortexto: 0xffFFFFFF, key: null, callback: igual,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
