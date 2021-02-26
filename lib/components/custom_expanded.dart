import 'package:flutter/cupertino.dart';

class CustomExpanded extends StatelessWidget {
  CustomExpanded({this.flex});
  int flex;

  @override
  Widget build(BuildContext context) {
    return Expanded(flex: flex ?? 1, child: Container());
  }
}
