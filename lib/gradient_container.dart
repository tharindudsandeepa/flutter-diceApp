import 'package:flutter/material.dart';
import 'package:dice_app/text_widget.dart';

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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/images/dice-1.png",
              width: 200,
            ),
            TextButton(
              onPressed: rolldice,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(top: 20),
                textStyle: const TextStyle(
                  fontSize: 28,
                ),
              ),
              child: const Text('Roll Dice'),
            )
          ],
        ),
      ),
    );
  }
}
