import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_alert/flutter_alert.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyecto_modelos_1/components/components.dart';
import 'package:proyecto_modelos_1/config/config.dart';
import 'package:proyecto_modelos_1/patterns/patterns.dart';

class RewardScreen extends StatefulWidget {
  int i;
  bool isHome;
  RewardScreen(this.i, this.isHome);
  @override
  _RewardScreenState createState() => _RewardScreenState();
}

class _RewardScreenState extends State<RewardScreen> {
  Skin skinBase, skin1, skin2, skin3;
  String label =
      "Por finalizar el juego, has ganado algunas recompensas, ¡Disfrutalas!";

  String image = "images/skinBase.png";
  @override
  void initState() {
    skinBase = SkinBase();
    skin1 = Skin1(skinBase);
    skin2 = Skin2(skin1);
    skin3 = Skin3(skin2);
    if(!widget.isHome){
      Timer(Duration(seconds: 1), () {
        showBasicAlert(label);
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.white,
      appBar: AppBar(
        backgroundColor: Palette.white,
        leading: CupertinoNavigationBarBackButton(
          color: Palette.mainBlue,
          onPressed: () {
            if (widget.isHome) {
              Navigator.pop(context, widget.i);
            } else {
              Navigator.pop(context, widget.i);
              Navigator.pop(context, widget.i);
            }
          },
        ),
        title: Text(
          "Recompensas",
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  color: Palette.mainBlue,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.2)),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: CustomProjectScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            child: Column(
              children: [
                Container(
                  height: 350,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: ExactAssetImage(image),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                CustomExpanded(),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                      child: CustomButton(
                          onPressed: () {
                            setState(() {
                              image = skinBase.getSkin();
                            });
                          },
                          title: "Base",
                          canPush: true),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CustomButton(
                          onPressed: () {
                            setState(() {
                              image = skin1.getSkin();
                            });
                          },
                          title: "Skin 1",
                          canPush: true),
                    ),
                    CustomButton(
                        onPressed: () {
                          setState(() {
                            image = skin2.getSkin();
                          });
                        },
                        title: "Skin 2",
                        canPush: true),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CustomButton(
                          onPressed: () {
                            setState(() {
                              image = skin3.getSkin();
                            });
                          },
                          title: "Skin 3",
                          canPush: true),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showBasicAlert(String label) {
    showAlert(
      context: context,
      title: "¡Enhorabuena!",
      body: label,
      actions: [
        AlertAction(
          text: "Aceptar",
          isDefaultAction: true,
        ),
      ],
    );
  }
}
