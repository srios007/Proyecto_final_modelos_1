import 'package:proyecto_modelos_1/config/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OptionRow extends StatelessWidget {
  OptionRow({
    @required this.text,
    this.onTap,
    this.iconData,
  });

  String text;
  Function onTap;
  var iconData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: onTap,
        child: Row(
          children: <Widget>[
            iconData == null
                ? const SizedBox.shrink()
                : Padding(
              padding: EdgeInsets.only(right: 12),
              child: Icon(
                iconData,
                size: 24,
                color: Palette.lightRed.withOpacity(0.85),
              ),
            ),
            Container(
              color: Palette.white,
              height: 50,
              child: Center(
                child: Text(
                  '$text',
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Palette.white,
                height: 50,
              ),
            ),
            Container(
              height: 50,
              color: Palette.white,
              child: Icon(
                Icons.chevron_right,
                color: Palette.black.withOpacity(0.25),
                size: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
