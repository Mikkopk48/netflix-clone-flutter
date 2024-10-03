import 'package:clon_netflix_flutter/screens/inicio.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Netflix());
}

class Netflix extends StatelessWidget {
  const Netflix({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData.dark(),
        home: const Scaffold(
      body:InicioPage(),
    ));
  }
}
