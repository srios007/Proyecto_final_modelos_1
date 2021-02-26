import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyecto_modelos_1/components/components.dart';
import 'package:proyecto_modelos_1/config/config.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomProjectScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "PROYECTO FINAL DE MODELOS 1",
                style: GoogleFonts.poppins(
                  textStyle: Styles.titleHomeScreen
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                "Presentado por:",
                style: GoogleFonts.poppins(
                    textStyle: Styles.subTitleHomeScreen
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                "Santiago Rios Valero - 20181020017",
                style: GoogleFonts.poppins(
                    textStyle: Styles.labelHomeScreen
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                "Juan Sebastián Gonzázlez Forero - 20181020029",
                style: GoogleFonts.poppins(
                    textStyle: Styles.labelHomeScreen
                ),
                textAlign: TextAlign.center,
              ),

              Text(
                "Presentado a:",
                style: GoogleFonts.poppins(
                    textStyle: Styles.subTitleHomeScreen
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                "Simar Enrique Herrera Jimenez",
                style: GoogleFonts.poppins(
                    textStyle: Styles.labelHomeScreen
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage('images/escudo.png'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
