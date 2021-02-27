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
  bool decision;
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
          tittle: "Introducción",
          imageRoute: "images/1.jpg",
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
          imageRoute: "images/2.jpg",
          story: "${labelsList[1].label}" ?? "",
        ),
        ComponentScene(
          builder: SceneBuilder().createScene(1),
          tittle: "Introducción",
          imageRoute: "images/1.jpg",
          story: "${labelsList[2].label}" ?? "",
        ),
        ComponentScene(
          builder: SceneBuilder().createScene(1),
          tittle: "Introducción",
          imageRoute: "images/1.jpg",
          story: "${labelsList[3].label}" ?? "",
        ),
        ComponentScene(
          builder: SceneBuilder().createScene(1),
          tittle: "Introducción",
          imageRoute: "images/1.jpg",
          story: "${labelsList[4].label}" ?? "",
        ),
        ComponentScene(
          builder: SceneBuilder().createScene(1),
          tittle: "Introducción",
          imageRoute: "images/1.jpg",
          story: "${labelsList[5].label}" ?? "",
        ),
        ComponentScene(
          builder: SceneBuilder().createScene(1),
          tittle: "Introducción",
          imageRoute: "images/1.jpg",
          story: "${labelsList[6].label}" ?? "",
        ),
        ComponentScene(
          builder: SceneBuilder().createScene(1),
          tittle: "Introducción",
          imageRoute: "images/1.jpg",
          story: "${labelsList[7].label}" ?? "",
        ),
        ComponentScene(
          builder: SceneBuilder().createScene(1),
          tittle: "Introducción",
          imageRoute: "images/1.jpg",
          story: "${labelsList[8].label}" ?? "",
        ),
        ComponentScene(
          builder: SceneBuilder().createScene(1),
          tittle: "Introducción",
          imageRoute: "images/1.jpg",
          story: "${labelsList[9].label}" ?? "",
        ),
        ComponentScene(
          builder: SceneBuilder().createScene(1),
          tittle: "Introducción",
          imageRoute: "images/1.jpg",
          story: "${labelsList[10].label}" ?? "",
        ),
        ComponentScene(
          builder: SceneBuilder().createScene(1),
          tittle: "Introducción",
          imageRoute: "images/1.jpg",
          story: "${labelsList[11].label}" ?? "",
        ),
        ComponentScene(
          builder: SceneBuilder().createScene(1),
          tittle: "Introducción",
          imageRoute: "images/1.jpg",
          story: "${labelsList[12].label}" ?? "",
        ),
        ComponentScene(
          builder: SceneBuilder().createScene(1),
          tittle: "Introducción",
          imageRoute: "images/1.jpg",
          story: "${labelsList[13].label}" ?? "",
        ),
        ComponentScene(
          builder: SceneBuilder().createScene(1),
          tittle: "Introducción",
          imageRoute: "images/1.jpg",
          story: "${labelsList[14].label}" ?? "",
        ),
        ComponentScene(
          builder: SceneBuilder().createScene(1),
          tittle: "Introducción",
          imageRoute: "images/1.jpg",
          story: "${labelsList[15].label}" ?? "",
        ),
        ComponentScene(
          builder: SceneBuilder().createScene(1),
          tittle: "Introducción",
          imageRoute: "images/1.jpg",
          story: "${labelsList[16].label}" ?? "",
        ),
      ];
    }).catchError((e) {});
  }
}
