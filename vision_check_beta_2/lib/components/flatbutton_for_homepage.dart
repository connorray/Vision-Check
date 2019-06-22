import 'package:flutter/material.dart';
import 'package:vision_check_beta_2/main.dart';

class FlatButtonForHomePage extends StatelessWidget {
  final String nameOfVision;
  final IconData iconOfVision;
  FlatButtonForHomePage(
      {@required this.nameOfVision, @required this.iconOfVision});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(nameOfVision),
      margin: EdgeInsets.only(top: 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.0),
        color: Colors.white,
      ),
    );
  }
}
