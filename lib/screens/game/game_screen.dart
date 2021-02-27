import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_modelos_1/components/components.dart';
import 'package:proyecto_modelos_1/config/config.dart';
import 'package:proyecto_modelos_1/patterns/patterns.dart';

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  bool decision;
  List<Widget> scenes= [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Column(
          children: [
            ComponentScene(
              builder: SceneBuilder().createScene(3),
              tittle: "escena de prueba",
              imageRoute: "images/portada.jpg",
              story: "Esto es una prueba",
              onPressedLeft: (){
                setState(() {
                  decision = true;
                });
              },
              onPressedRight: (){
                setState(() {
                  decision = false;
                });
              },
            )
          ],
        ),
      ),
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    scenes = [
      ComponentScene(
        builder: SceneBuilder().createScene(3),
        tittle: "Introducción",
        imageRoute: "images/portada.jpg",
        story: "Esto es una prueba",
        onPressedLeft: (){
          setState(() {
            decision = true;
          });
        },
        onPressedRight: (){
          setState(() {
            decision = false;
          });
        },
      )
    ];
    super.initState();
  }
}
