import 'package:flutter/material.dart';

class butoes_telcado extends StatelessWidget {
  final String? Texto;
  final int cor;
  final Function? callback;
  final int cortexto;
  butoes_telcado({
    required Key? key,
    required this.cor,
    this.Texto,
    this.callback,
    required this.cortexto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 13.0),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Color(cor),
          minimumSize: Size(
            68,
            68,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(64.0)),
          ),
          textStyle: const TextStyle(
            fontSize: 30.0,
          ),
        ),
        onPressed: () {
          callback!(Texto);
        },
        child: Text(
          Texto!,

          style: TextStyle(color: Color(cortexto),),
        ),
      ),
    );
  }
}
