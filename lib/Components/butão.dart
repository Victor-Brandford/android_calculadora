import 'package:flutter/material.dart';

class butoes_telcado extends StatelessWidget {
  final String? Texto;
  final String cor = '0xffb74093';
  final ButtonStyle estiloButtao = TextButton.styleFrom(

    backgroundColor: const Color(int.parse(cor)),
    minimumSize: Size(
      70,
      70,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(64.0)),
    ),
    textStyle: const TextStyle(
      fontSize: 24.0,
    ),
  );
  butoes_telcado({
    this.Texto,
  });

  @override
  Widget build(BuildContext context) {
    //
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.0,horizontal: 12.0),
      child: TextButton(
        style: estiloButtao,

        onPressed: () {debugPrint(Texto!);},
        child: Text(Texto!,style: TextStyle(color: Colors.white),),
      ),
    );
  }
}


