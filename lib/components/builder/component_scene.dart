import 'package:flutter/cupertino.dart';
import 'package:proyecto_modelos_1/components/components.dart';

// ignore: must_be_immutable
class ComponentScene extends StatelessWidget {
  String tittle;
  @required
  String imageRoute;
  @required
  String story;
  Function onPressedLeft;
  Function onPressedRight;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Text(tittle ?? ""),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage(imageRoute),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Text(story),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButton(
                  onPressed: onPressedLeft,
                  title: "Pelear".toUpperCase(),
                  canPush: true),
              CustomButton(
                  onPressed: onPressedRight,
                  title: "Escapar".toUpperCase(),
                  canPush: true)
            ],
          )
        ],
      ),
    );
  }
}
