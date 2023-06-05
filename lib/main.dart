import "package:flutter/material.dart";
import "package:flutter_ui_challenge/home/view/home.dart";
import "package:flutter_ui_challenge/service/pallette.dart";
import "package:flutter_ui_challenge/welcome_screen/view/welcome_screen.dart";
import "package:google_fonts/google_fonts.dart";

void main() {
  runApp(MedicalApp());
}

class MedicalApp extends StatelessWidget {
  const MedicalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Medical App",
      home: WelcomeScreen(),
      theme: ThemeData(
        textTheme: GoogleFonts.lexendTextTheme((Theme.of(context).textTheme)),
      ),
    );
  }
}
