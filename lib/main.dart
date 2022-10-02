import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uishoppingdepantas/bemvindo_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ui de Shopping de Plantas',
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        primarySwatch: Colors.blue,
      ),
      home: const BemVindoScreen(),
    );
  }
}