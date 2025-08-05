import 'package:exchange_caclculator/design_system/theme/EFColors.dart';
import 'package:flutter/material.dart';

class EFBackgound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color(0xFFE8F4F8),
      child: Stack(
        children: [
          Positioned(
            right: -20,
            top: -100,
            bottom: 100,
            child: CustomPaint(
              size: Size(600, MediaQuery.of(context).size.height),
              painter: CurvedShapePainter(),
            ),
          ),
        ],
      ),
    );
  }
}

class CurvedShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = EFColors.secondary
      ..style = PaintingStyle.fill;

    final path = Path();

    path.moveTo(size.width, 0);

    path.quadraticBezierTo(
      size.width * 0.25,
      size.height * 0.6,
      size.width,
      size.height,
    );

    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
