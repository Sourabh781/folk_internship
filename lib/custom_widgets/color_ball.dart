import 'package:flutter/material.dart';

class ColorBoll extends StatelessWidget {
  ColorBoll({this.color, this.ontap});
  final Color color;
  final Function ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      ),
    );
  }
}
