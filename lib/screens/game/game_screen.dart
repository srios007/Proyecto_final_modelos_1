import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_modelos_1/components/components.dart';
import 'package:proyecto_modelos_1/config/config.dart';
import 'package:proyecto_modelos_1/model/models.dart';
import 'package:proyecto_modelos_1/patterns/patterns.dart';

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  List<Widget> scenes = [];
  List<Label> labelsList = [];
  int i = 0;
  @override
  void initState() {
    _getLabels();

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
              Navigator.pop(context);
            },
          ),
          elevation: 0,
        ),
        body: scenes[i]);
  }

  void _getLabels() {
    scenes = [
      ComponentScene(
        builder: SceneBuilder().createScene(1),
        tittle: "",
        imageRoute: "",
        story: "",
        onPressedContinue: () {
          setState(() {
            i++;
          });
        },
      ),
    ];
    Firestore.instance
        .collection("labels")
        .orderBy("id", descending: false)
        .getDocuments()
        .then((querySnapshot) {
      if (querySnapshot.documents.isNotEmpty) {
        labelsList.clear();
        setState(() {
          querySnapshot.documents.forEach((labelDoc) {
            labelsList.add(Label(
              id: labelDoc.documentID,
              label: labelDoc.data["label"],
            ));
          });
        });
      }
      scenes.clear();
      scenes = [
        ComponentScene(
          builder: SceneBuilder().createScene(1),
          tittle: "Epílogo",
          imageRoute: "images/portada.jpg",
          story: "${labelsList[0].label}" ?? "",
          onPressedContinue: () {
            setState(() {
              i++;
            });
          },
        ),
        ComponentScene(
          builder: SceneBuilder().createScene(1),
          tittle: "Capítulo 1",
          imageRoute: "images/1.jpg",
          story: "${labelsList[1].label}" ?? "",
          onPressedContinue: () {
            setState(() {
              i++;
            });
          },
        ),
        ComponentScene(
          builder: SceneBuilder().createScene(1),
          imageRoute: "images/2.jpg",
          story: "${labelsList[2].label}" ?? "",
          onPressedContinue: () {
            setState(() {
              i++;
            });
          },
        ),
        ComponentScene(
          builder: SceneBuilder().createScene(1),
          imageRoute: "images/3.jpg",
          story: "${labelsList[3].label}" ?? "",
          onPressedContinue: () {
            setState(() {
              i++;
            });
          },
        ),
        ComponentScene(
          builder: SceneBuilder().createScene(2),
          tittle: "Decisión",
          imageRoute: "images/4.jpg",
          story: "${labelsList[4].label}" ?? "",
          onPressedLeft: () {
            setState(() {
              i++;
            });
          },
          onPressedRight: () {
            setState(() {
              i++;
              i++;
            });
          },
        ),
        ComponentScene(
          builder: SceneBuilder().createScene(1),
          imageRoute: "images/5.jpg",
          story: "${labelsList[5].label}" ?? "",
          onPressedContinue: () {
            setState(() {
              i = 17;
            });
          },
        ),
        ComponentScene(
          builder: SceneBuilder().createScene(1),
          tittle: "Capítulo 2",
          imageRoute: "images/6.jpg",
          story: "${labelsList[6].label}" ?? "",
          onPressedContinue: () {
            setState(() {
              i++;
            });
          },
        ),
        ComponentScene(
          builder: SceneBuilder().createScene(1),
          imageRoute: "images/7.png",
          story: "${labelsList[7].label}" ?? "",
          onPressedContinue: () {
            setState(() {
              i++;
            });
          },
        ),
        ComponentScene(
          builder: SceneBuilder().createScene(3),
          tittle: "Decisión",
          imageRoute: "images/9.jpg",
          story: "${labelsList[8].label}" ?? "",
          onPressedLeft: () {
            setState(() {
              i++;
              i++;
              i++;
            });
          },
          onPressedRight: () {
            setState(() {
              i++;
            });
          },
        ),
        ComponentScene(
          builder: SceneBuilder().createScene(1),
          imageRoute: "images/11.png",
          story: "${labelsList[9].label}" ?? "",
          onPressedContinue: () {
            setState(() {
              i++;
            });
          },
        ),
        ComponentScene(
          builder: SceneBuilder().createScene(1),
          tittle: "Murió",
          imageRoute: "images/13.jpg",
          story: "",
          onPressedContinue: () {
            setState(() {
              i = 17;
            });
          },
        ),
        ComponentScene(
          builder: SceneBuilder().createScene(1),
          tittle: "Capítulo 3",
          imageRoute: "images/10.jpg",
          story: "${labelsList[10].label}" ?? "",
          onPressedContinue: () {
            setState(() {
              i++;
            });
          },
        ),
        ComponentScene(
          builder: SceneBuilder().createScene(1),
          tittle: "¡¡¡ CUIDADO !!!",
          imageRoute: "images/12.jpg",
          story: "",
          onPressedContinue: () {
            setState(() {
              i++;
            });
          },
        ),
        ComponentScene(
          builder: SceneBuilder().createScene(1),
          tittle: "¡¡¡ AHHHHHHHHHHHH !!!",
          imageRoute: "images/14.jpg",
          story: "",
          onPressedContinue: () {
            setState(() {
              i++;
            });
          },
        ),
        ComponentScene(
          builder: SceneBuilder().createScene(1),
          tittle: "Decisión",
          imageRoute: "images/15.jpg",
          story: "${labelsList[11].label}" ?? "",
          onPressedLeft: () {
            setState(() {
              i++;
            });
          },
          onPressedRight: () {
            setState(() {
              i++;
              i++;
            });
          },
        ),
        ComponentScene(
          builder: SceneBuilder().createScene(1),
          imageRoute: "images/16.jpg",
          story: "${labelsList[12].label}" ?? "",
          onPressedContinue: () {
            setState(() {
              i++;
              i++;
            });
          },
        ),
        ComponentScene(
          builder: SceneBuilder().createScene(1),
          tittle: "Capítulo 4",
          imageRoute: "images/17.jpg",
          story: "${labelsList[13].label}" ?? "",
          onPressedContinue: () {
            setState(() {
              i++;
              i++;
            });
          },
        ),
        ComponentScene(
          builder: SceneBuilder().createScene(3),
          tittle: "Fallaste",
          imageRoute: "images/muerte.jpg",
          story: "",
          onPressedLeft: () {
            Navigator.pop(context);
          },
          lblLeft: "Terminar",
          onPressedRight: () {
            setState(() {});
          },
          lblRight: "Usar reliquia",
        ),
        ComponentScene(
          builder: SceneBuilder().createScene(1),
          imageRoute: "images/18.jpg",
          story: "${labelsList[14].label}" ?? "",
          onPressedContinue: () {
            setState(() {
              i++;
            });
          },
        ),
        ComponentScene(
          builder: SceneBuilder().createScene(1),
          tittle: "Decisión",
          imageRoute: "images/19.jpg",
          story: "Encontraste al Golem, ¿qué quieres hacer?",
          onPressedLeft: () {
            setState(() {
              i++;
            });
          },
          onPressedRight: () {
            setState(() {
              i++;
              i++;
            });
          },
        ),
        ComponentScene(
          builder: SceneBuilder().createScene(1),
          tittle: "Prólogo",
          imageRoute: "images/20.jpg",
          story: "${labelsList[15].label}" ?? "",
          lblContinue: "Finalizar",
          onPressedContinue: () {
            Navigator.pop(context);
          },
        ),
        ComponentScene(
          builder: SceneBuilder().createScene(1),
          imageRoute: "images/21.jpg",
          story: "${labelsList[16].label}" ?? "",
          onPressedContinue: () {
            setState(() {
              i = 17;
            });
          },
        ),
      ];
    }).catchError((e) {});
  }
}
