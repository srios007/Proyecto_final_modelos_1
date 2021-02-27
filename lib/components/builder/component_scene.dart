import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyecto_modelos_1/components/components.dart';
import 'package:proyecto_modelos_1/config/config.dart';
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              builder.addTittle(tittle) ?? "",
              style: GoogleFonts.poppins(textStyle: Styles.titleScene),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage(builder.addImage(imageRoute)),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          Text(
            builder.addStory(story),
            style: GoogleFonts.poppins(textStyle: Styles.labelScene),
            textAlign: TextAlign.start,
          ),
          onPressedLeft != null
              ? Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
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
                  ),
                )
              : const SizedBox.shrink()
        ],
      ),
    );
  }
}
