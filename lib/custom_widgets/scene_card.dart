import 'package:flutter/material.dart';

class ScenesCard extends StatelessWidget {
  ScenesCard({this.label, this.color2, this.color1});
  final String label;
  final Color color1;
  final Color color2;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(colors: [color1, color2])),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            children: [
              Image.asset(
                'assets/surface2.png',
                scale: 2,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                label,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
