import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_alert/flutter_alert.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyecto_modelos_1/components/components.dart';
import 'package:proyecto_modelos_1/config/config.dart';
import 'package:proyecto_modelos_1/model/models.dart';
import 'package:proyecto_modelos_1/patterns/patterns.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:proyecto_modelos_1/screens/game/reward_screen.dart';

class GameScreen extends StatefulWidget {
  int i;

  GameScreen({this.i});

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  List<Widget> scenes = [];
  List<Label> labelsList = [];
  int i = 0;
  Originator originator;
  Caretaker caretaker;
  bool isLoading = false;
  String label = 'Has ganado una skin para tu personaje';

  @override
  void initState() {
    _getLabels();
    super.initState();
    setState(() {
      i = widget.i;
    });
    originator = Originator(i);
    caretaker = Caretaker();
    caretaker.setMemento(originator.createMemento());
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
              i = originator.getCounter();
              Navigator.pop(context, i);
              player.stop();
            },
          ),
          title: Text(
            "Aventura",
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
        body: isLoading ? loadingScreen() : scenes[i]);
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
    setState(() {
      isLoading = true;
    });
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
      setState(() {
        isLoading = false;
      });
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
          builder: SceneBuilder().createScene(2),
          imageRoute: "images/2.jpg",
          story: "${labelsList[2].label}" ?? "",
          onPressedContinue: () {
            setState(() {
              i++;
            });
          },
        ),
        ComponentScene(
          builder: SceneBuilder().createScene(2),
          imageRoute: "images/3.jpg",
          story: "${labelsList[3].label}" ?? "",
          onPressedContinue: () {
            playHandler(1);
            originator.setCounter(i);
            caretaker.setMemento(originator.createMemento());
            setState(() {
              i++;
            });
          },
        ),
        ComponentScene(
          builder: SceneBuilder().createScene(1),
          tittle: "Decisión",
          imageRoute: "images/4.jpg",
          story: "${labelsList[4].label}" ?? "",
          onPressedLeft: () {
            setState(() {
              i++;
              player.stop();
              player.dispose();
            });
          },
          onPressedRight: () {
            setState(() {
              i++;
              i++;
              player.stop();
              player.dispose();
            });
            showBasicAlert(label);
          },
        ),
        ComponentScene(
          builder: SceneBuilder().createScene(2),
          imageRoute: "images/5.jpg",
          story: "${labelsList[5].label}" ?? "",
          onPressedContinue: () {
            setState(() {
              i = 17;
            });
            playHandler(2);
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
          builder: SceneBuilder().createScene(2),
          imageRoute: "images/7.png",
          story: "${labelsList[7].label}" ?? "",
          onPressedContinue: () {
            playHandler(1);
            originator.setCounter(i);
            caretaker.setMemento(originator.createMemento());
            setState(() {
              i++;
            });
          },
        ),
        ComponentScene(
          builder: SceneBuilder().createScene(1),
          tittle: "Decisión",
          imageRoute: "images/9.jpg",
          story: "${labelsList[8].label}" ?? "",
          onPressedLeft: () {
            setState(() {
              i++;
              i++;
              i++;
              player.stop();
              player.dispose();
            });
            showBasicAlert(label);
          },
          onPressedRight: () {
            setState(() {
              i++;
              player.stop();
              player.dispose();
            });
          },
        ),
        ComponentScene(
          builder: SceneBuilder().createScene(2),
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
            playHandler(2);
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
            playHandler(1);
            originator.setCounter(i);
            caretaker.setMemento(originator.createMemento());
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
            player.stop();
            player.dispose();
          },
          onPressedRight: () {
            setState(() {
              i++;
              i++;
            });
            player.stop();
            player.dispose();
            showBasicAlert(label);
          },
        ),
        ComponentScene(
          builder: SceneBuilder().createScene(2),
          imageRoute: "images/16.jpg",
          story: "${labelsList[12].label}" ?? "",
          onPressedContinue: () {
            setState(() {
              i++;
              i++;
            });
            playHandler(2);
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
          builder: SceneBuilder().createScene(1),
          tittle: "Fallaste",
          imageRoute: "images/muerte.jpg",
          story: "",
          onPressedLeft: () {
            player.stop();
            player.dispose();
            if (i == 18) {
              Navigator.pop(context, 18);
            } else {
              Navigator.pop(context, 0);
            }
          },
          lblLeft: "Terminar",
          onPressedRight: () {
            setState(() {
              i = originator.getCounter();
            });
          },
          lblRight: "Usar reliquia",
        ),
        ComponentScene(
          builder: SceneBuilder().createScene(2),
          imageRoute: "images/18.jpg",
          story: "${labelsList[14].label}" ?? "",
          onPressedContinue: () {
            playHandler(1);
            originator.setCounter(i);
            caretaker.setMemento(originator.createMemento());
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
            player.stop();
            player.dispose();
            setState(() {
              playHandler(3);

              i++;
            });
            showBasicAlert(label);
          },
          onPressedRight: () {
            setState(() {
              i++;
              i++;
            });
            player.stop();
            player.dispose();
          },
        ),
        ComponentScene(
          builder: SceneBuilder().createScene(1),
          tittle: "Prólogo",
          imageRoute: "images/20.jpg",
          story: "${labelsList[15].label}" ?? "",
          lblContinue: "Finalizar",
          onPressedContinue: () async {
            i = originator.getCounter();
            player.stop();
            player.dispose();
            final result = await Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => RewardScreen(i, false),
              ),
            );
            setState(() {
              i = result;
            });
          },
        ),
        ComponentScene(
          builder: SceneBuilder().createScene(2),
          imageRoute: "images/21.jpg",
          story: "${labelsList[16].label}" ?? "",
          onPressedContinue: () {
            setState(() {
              i = 17;
            });
            playHandler(2);
          },
        ),
      ];
    }).catchError((e) {
      setState(() {
        isLoading = false;
      });
    });
  }

  Widget loadingScreen() {
    return Container();
  }

  static AudioCache cache1 = AudioCache();
  static AudioCache cache2 = AudioCache();
  static AudioCache cache3 = AudioCache();

  AudioPlayer player;

  bool isPlaying = false;
  bool isPaused = false;

  void playHandler(int option) async {
    switch (option) {
      case 1:
        {
          player = await cache1.play('sounds/decision.mp3');
        }
        break;

      case 2:
        {
          player = await cache2.play('sounds/lose.mp3');
        }
        break;
      case 3:
        {
          player = await cache3.play('sounds/win.mp3');
        }
        break;
    }

    setState(() {
      if (isPaused) {
        isPlaying = false;
        isPaused = false;
      } else {
        isPlaying = !isPlaying;
      }
    });
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
