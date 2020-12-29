import 'dart:math';

import 'package:flutter/material.dart';


class ClockPainter extends CustomPainter {
  final BuildContext context;
  final DateTime _dateTime;

  ClockPainter(this.context, this._dateTime);

  @override
  void paint(Canvas canvas, Size size) {
    double centerX = size.width / 2;
    double centerY = size.height / 2;
    Offset center = Offset(centerX, centerY);

    // Minute Calculation
    var minHandX = centerX + size.width * 0.35 * cos(_dateTime.minute * 6 * pi / 180);
    var minHandY = centerY + size.width * 0.35 * sin(_dateTime.minute * 6 * pi / 180);
    // Minute hand
    canvas.drawLine(
        center,
        Offset(minHandX, minHandY),
        Paint()
          ..color = Theme.of(context).accentColor
          ..style = PaintingStyle.stroke
          ..strokeWidth = 10);

    // Hour Calculation
    var hourHandX = centerX +
        size.width * 0.3 * cos((_dateTime.hour * 30 + _dateTime.minute * 0.5) * pi / 180);
    var hourHandY = centerY +
        size.width * 0.3 * sin((_dateTime.hour * 30 + _dateTime.minute * 0.5) * pi / 180);
    // Hour hand
    canvas.drawLine(
        center,
        Offset(hourHandX, hourHandY),
        Paint()
          ..color = Theme.of(context).colorScheme.secondary
          ..style = PaintingStyle.stroke
          ..strokeWidth = 10);

    // Second Calculation
    var secHandX = centerX + size.width * 0.4 * cos(_dateTime.second * 6 * pi / 180);
    var secHandY = centerY + size.width * 0.4 * sin(_dateTime.second * 6 * pi / 180);
    // Second hand
    canvas.drawLine(center, Offset(secHandX, secHandY),
        Paint()..color = Theme.of(context).primaryColor);

    // Center dots
    Paint dotPainter = Paint()
      ..color = Theme.of(context).primaryIconTheme.color;
    canvas.drawCircle(center, 24, dotPainter);
    canvas.drawCircle(
        center, 23, Paint()..color = Theme.of(context).backgroundColor);
    canvas.drawCircle(center, 10, dotPainter);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
