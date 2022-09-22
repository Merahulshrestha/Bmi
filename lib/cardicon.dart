import 'package:flutter/material.dart';
import 'package:this_bmi/main.dart';

class CardIconText extends StatelessWidget {
  final IconData icon;
  final String label;

  CardIconText({required this.icon, required this.label}) {}

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          // FontAwesomeIcons.mars,
          icon,
          size: IconSize,
        ),
        SizedBox(
          height: sizeHeight,
        ),
        Text(label),
      ],
    );
  }
}
