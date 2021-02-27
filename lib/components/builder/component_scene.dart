import 'package:flutter/cupertino.dart';
import 'package:proyecto_modelos_1/components/components.dart';
import 'package:proyecto_modelos_1/patterns/patterns.dart';

// ignore: must_be_immutable
class ComponentScene extends StatelessWidget {
  ComponentScene(
      {this.tittle,
      this.imageRoute,
      this.story,
      this.onPressedLeft,
      this.onPressedRight,
      this.builder});

  String tittle;
  @required
  String imageRoute;
  @required
  String story;
  Function onPressedLeft;
  Function onPressedRight;
  BuilderSceneBase builder;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Text(builder.addTittle(tittle) ?? ""),
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage(builder.addImage(imageRoute)),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Text(builder.addStory(story)),
          onPressedLeft != null
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(
                      width: MediaQuery.of(context).size.width * 0.4,
                        onPressed: onPressedLeft,
                        title: "Pelear",
                        canPush: true),
                    CustomButton(
                        width: MediaQuery.of(context).size.width * 0.4,
                        onPressed: onPressedRight,
                        title: "Escapar",
                        canPush: true)
                  ],
                )
              : const SizedBox.shrink()
        ],
      ),
    );
  }
}
