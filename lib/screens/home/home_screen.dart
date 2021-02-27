import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyecto_modelos_1/components/components.dart';
import 'package:proyecto_modelos_1/config/config.dart';
import 'package:proyecto_modelos_1/screens/game/game_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.white,
      appBar: AppBar(
        backgroundColor: Palette.white,
        leading: CupertinoNavigationBarBackButton(
          color: Palette.mainBlue,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
      ),
      body: CustomProjectScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Text(
                "Una nueva aventura mediante patrones".toUpperCase(),
                style: GoogleFonts.poppins(textStyle: Styles.titleHomeScreen),
                textAlign: TextAlign.center,
              ),
              CustomExpanded(),
              Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage('images/portada.jpg'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              CustomExpanded(flex: 2),
              CustomButton(
                title: "Iniciar",
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => GameScreen(),
                    ),
                  );
                },
                canPush: true,
              ),
              const SizedBox(height: 15),
              CustomButton(
                title: "Instrucciones",
                onPressed: () {},
                canPush: true,
              ),
              CustomExpanded(),
            ],
          ),
        ),
      ),
    );
  }
}
