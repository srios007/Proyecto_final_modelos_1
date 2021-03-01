import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_alert/flutter_alert.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyecto_modelos_1/components/components.dart';
import 'package:proyecto_modelos_1/config/config.dart';
import 'package:proyecto_modelos_1/screens/game/game_screen.dart';
import 'package:proyecto_modelos_1/screens/game/reward_screen.dart';
import 'package:proyecto_modelos_1/screens/home/instructions.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int aux = 0;
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
                "Los patrones del destino".toUpperCase(),
                style: GoogleFonts.poppins(textStyle: Styles.titleHomeScreen),
                textAlign: TextAlign.center,
              ),
              CustomExpanded(),
              Container(
                height: 250,
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
                onPressed: () async{
                  final result = await Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => GameScreen(i: aux == 18 ? 0:aux),
                    ),
                  );
                  if(result != null){
                    setState(() {
                      aux = result;
                    });
                  }
                },
                canPush: true,
              ),
              const SizedBox(height: 15),
              CustomButton(
                title: "Instrucciones",
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => Instructions(),
                    ),
                  );
                },
                canPush: true,
              ),
              const SizedBox(height: 15),
              aux == 18
                ?CustomButton(
                title: "Recompensa",
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => RewardScreen(18,true),
                    ),
                  );
                },
                canPush: true,
              )
                  :const SizedBox.shrink(),
              CustomExpanded(),
            ],
          ),
        ),
      ),
    );
  }

  void showBasicAlert() {
    showAlert(
      context: context,
      title: "¡Enhorabuena!",
      body: "label",
      actions: [
        AlertAction(
          text: "Continuar",
          isDefaultAction: true,
          onPressed: (){

          }
        ),
        AlertAction(
          text: "Regresar",
          isDefaultAction: true,
        ),
      ],
    );
  }
}
