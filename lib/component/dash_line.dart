import 'package:flutter/material.dart';

class DashedLinePainter extends CustomPainter {
  final String text;
  DashedLinePainter({required this.text});

  @override
  void paint(Canvas canvas, Size size) {
    final textStyle = TextStyle(
      color: Colors.black,
      fontSize: 16,
    );

    final textSpan = TextSpan(
      text: text,
      style: textStyle,
    );
    final textPainter = TextPainter(
      text: textSpan,
      maxLines: 1,
      ellipsis: '...',
      textDirection: TextDirection.ltr,
    );
    textPainter.layout(
      minWidth: 0,
      maxWidth: size.width,
    );
    final xCenter = 0;
    final yCenter = (textPainter.height) / 2;
    final offset = Offset(0, yCenter);
    textPainter.paint(canvas, offset);

    double dashWidth = 9, dashSpace = 5, startX = textPainter.width;

    if (size.width > startX + 20) {
      final paint = Paint()
        ..color = Colors.grey
        ..strokeWidth = 1;

      while (startX < size.width) {
        canvas.drawLine(Offset(startX, size.height / 2),
            Offset(startX + dashWidth, size.height / 2), paint);
        startX += dashWidth + dashSpace;
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
