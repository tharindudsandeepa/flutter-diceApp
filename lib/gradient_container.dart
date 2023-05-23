import 'package:flutter/material.dart';
import 'package:dice_app/text_widget.dart';
import 'package:dice_app/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});
  static const startAlignment = Alignment.topLeft;
  static const endAlignment = Alignment.bottomRight;

  rolldice() {}
  final Color color1;
  final Color color2;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
