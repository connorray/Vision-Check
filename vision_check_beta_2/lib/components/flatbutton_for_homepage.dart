import 'package:flutter/material.dart';

class FlatButtonForHomePage extends StatelessWidget {
  final String nameOfVision;
  final IconData iconOfVision;
  FlatButtonForHomePage(
      {@required this.nameOfVision, @required this.iconOfVision});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 100.0,
    );
  }
}
