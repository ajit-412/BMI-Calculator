import 'package:flutter/material.dart';

class RoundIconBtn extends StatelessWidget {
  final IconData icon;
  final Function() onPressed;

  RoundIconBtn({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      elevation: 8.0,
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF414247),
    );
  }
}
