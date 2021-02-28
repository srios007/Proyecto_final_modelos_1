import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_modelos_1/components/components.dart';
import 'package:proyecto_modelos_1/config/config.dart';

class RewardScreen extends StatefulWidget {
  @override
  _RewardScreenState createState() => _RewardScreenState();
}

class _RewardScreenState extends State<RewardScreen> {
  String image = "skinBase";
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
        title: Text("Recompensas"),
        elevation: 0,
      ),
      body: CustomProjectScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage('images/$image.png'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                      onPressed: () {
                        setState(() {
                          image = "skinBase";
                        });
                      },
                      title: "Base",
                      width: MediaQuery.of(context).size.width * 0.2),
                  CustomButton(
                      onPressed: () {
                        setState(() {
                          image = "skin1";
                        });
                      },
                      title: "Skin 1",
                      width: MediaQuery.of(context).size.width * 0.2),
                  CustomButton(
                      onPressed: () {
                        setState(() {
                          image = "skin2";
                        });
                      },
                      title: "Skin 2",
                      width: MediaQuery.of(context).size.width * 0.2),
                  CustomButton(
                      onPressed: () {
                        setState(() {
                          image = "skin3";
                        });
                      },
                      title: "Skin 3",
                      width: MediaQuery.of(context).size.width * 0.2)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
