import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyecto_modelos_1/config/config.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({
    @required this.onPressed,
    this.title,
    this.backgroundColor,
    this.shadowColor,
    this.isLoading = false,
    this.canPush = false,
    this.width
  });
  String title;
  Color backgroundColor;
  Color shadowColor;
  Function onPressed;
  bool isLoading;
  bool canPush;
  double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 63,
          width: width ?? MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: canPush? Palette.transparent :Palette.mainBlue,
              width: 2
            ),
            gradient: canPush
                ? LinearGradient(
                    colors: [Palette.lightGreen, Palette.mainBlue],
                    stops: [0.4, 0.9],
                    begin: FractionalOffset.centerLeft,
                    end: FractionalOffset.centerRight,
                  )
                : LinearGradient(
                    colors: [Palette.white, Palette.white],
                    stops: [1, 1],
                    begin: FractionalOffset.centerLeft,
                    end: FractionalOffset.centerRight,
                  ),
          ),
          child: CupertinoButton(
            child: isLoading
                ? Container(
                    height: 15,
                    width: 15,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Palette.mainBlue),
                      strokeWidth: 3,
                    ),
                  )
                : Text(
                    title ?? "Continuar",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: Palette.mainBlue
                    ),
                  ),
            onPressed: () {
              if (!isLoading) {
                onPressed();
              }
            },
          ),
        ),
      ],
    );
  }
}
