import 'package:flutter/material.dart';
import 'package:dice_app/text_widget.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  static const startAlignment = Alignment.topLeft;
  static const endAlignment = Alignment.bottomRight;

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 26, 2, 80),
            Color.fromARGB(255, 45, 7, 98),
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: StyledText(),
      ),
    );
  }
}
