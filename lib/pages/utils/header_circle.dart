import 'package:flutter/material.dart';
import 'package:spltwise_clone/pages/utils/draw_circle.dart';

class HeaderCircle extends StatelessWidget {
  const HeaderCircle({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final x = size.width / 2;
    final radius = 5 * (size.width) / 8;
    final y = 2 * (size.height) / 5 - radius;

    return CustomPaint(
      painter: DrawCircle(
          x: x,
          y: y,
          radius: radius,
          color: const Color.fromRGBO(76, 187, 155, 1)),
    );
  }
}
