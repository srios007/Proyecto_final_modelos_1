import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
      this.builder,
      this.onPressedContinue,
      this.lblLeft,
      this.lblRight,
        this.lblContinue
      });

  String tittle;
  @required
  String imageRoute;
  @required
  String story;
  Function onPressedLeft;
  Function onPressedRight;
  Function onPressedContinue;
  BuilderSceneBase builder;
  String lblLeft;
  String lblRight;
  String lblContinue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomProjectScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            tittle != null
            ?Center(
              child: Text(
                builder.addTittle(tittle) ?? "",
                style: GoogleFonts.poppins(textStyle: Styles.titleScene),
              ),
            )
            : const SizedBox.shrink(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage(builder.addImage(imageRoute?? "images/muerte.jpg")),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            story != null
                ? Text(
                    builder.addStory(story) ?? "",
                    style: GoogleFonts.poppins(textStyle: Styles.labelScene),
                    textAlign: TextAlign.start,
                  )
                : Center(
                    child: Container(
                      height: 50,
                      width: 50,
                      child: CircularProgressIndicator(
                        valueColor:
                            AlwaysStoppedAnimation<Color>(Palette.mainBlue),
                        strokeWidth: 3,
                      ),
                    ),
                  ),
            CustomExpanded(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: onPressedLeft != null
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomButton(
                            width: MediaQuery.of(context).size.width * 0.4,
                            onPressed: onPressedLeft,
                            title: lblLeft ?? "Pelear",
                            canPush: true),
                        CustomButton(
                            width: MediaQuery.of(context).size.width * 0.4,
                            onPressed: onPressedRight,
                            title: lblRight ??  "Escapar",
                            canPush: true)
                      ],
                    )
                  : CustomButton(
                      onPressed: onPressedContinue,
                      title:  lblContinue ?? "Continuar",
                      canPush: true),
            )
          ],
        ),
      ),
    );
  }
}
