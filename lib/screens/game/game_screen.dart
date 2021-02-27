import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_modelos_1/components/components.dart';
import 'package:proyecto_modelos_1/config/config.dart';

class Gamescreen extends StatefulWidget {
  @override
  _GamescreenState createState() => _GamescreenState();
}

class _GamescreenState extends State<Gamescreen> {
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

          ],
        ),
      ),
    );
  }
}
