import 'package:flutter/material.dart';

class BmiCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  final Function()? onTap;
  BmiCard({required this.colour, required this.cardChild, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}
