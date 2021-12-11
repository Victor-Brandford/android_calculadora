import 'package:flutter/material.dart';

class butoes_telcado extends StatelessWidget {
  final String? Texto;
  final ButtonStyle _EstiloRoxo = TextButton.styleFrom(
      backgroundColor: Colors.purpleAccent,
      minimumSize: Size(
      60,
      60,
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
    return TextButton(
      style:_EstiloRoxo,
      //_EstiloRoxo,

      onPressed: () {},
      child: Text(Texto!,style: TextStyle(color: Colors.white),),
    );
  }
}
