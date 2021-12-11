import 'package:flutter/material.dart';
import 'Screens/Home.dart';

void main() {
  runApp(calc_app());
}

class calc_app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: calc_Page(),
    );
  }
}
