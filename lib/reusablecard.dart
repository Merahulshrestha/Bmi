import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;

  ReusableCard({required this.colour, required this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: const EdgeInsets.all(8.0),
      height: 200,
      width: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: colour,
      ),
    );
  }
}
