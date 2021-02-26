import 'package:flutter/cupertino.dart';
import 'package:proyecto_modelos_1/config/visual/palette.dart';

class Styles {
  /// Init screen
  static TextStyle titleInitScreen = TextStyle(
    color: Palette.black,
    fontSize: 30,
    fontWeight: FontWeight.w700,
    letterSpacing: 1.2
  );
  static TextStyle subTitleInitScreen = TextStyle(
      color: Palette.black,
      fontSize: 20,
      fontWeight:
      FontWeight.w600
  );
  static TextStyle labelInitScreen = TextStyle(
    color: Palette.black,
    fontSize: 14,
    fontWeight: FontWeight.w400
  );
  /// Home screen
  static TextStyle titleHomeScreen = TextStyle(
      color: Palette.mainBlue,
      fontSize: 30,
      fontWeight: FontWeight.w700,
      letterSpacing: 1.2
  );
  static TextStyle subTitleHomeScreen = TextStyle(
      color: Palette.mainBlue,
      fontSize: 20,
      fontWeight:
      FontWeight.w600
  );
  static TextStyle labelHomeScreen = TextStyle(
      color: Palette.mainBlue,
      fontSize: 14,
      fontWeight: FontWeight.w400
  );

}
