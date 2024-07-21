import 'package:flutter/material.dart';

class DrawCircle extends CustomPainter {
  final double x;
  final double y;
  final double radius;
  final Color color;

  DrawCircle({
    required this.x,
    required this.y,
    required this.radius,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = color;
    canvas.drawCircle(Offset(x, y), radius, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
