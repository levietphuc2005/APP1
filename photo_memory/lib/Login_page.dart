// ignore_for_file: file_names

import 'package:flutter/material.dart';

void main() => runApp(const LoginPage());

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Rectangle with Low Opacity'),
        ),
        body: Center(
          child: SizedBox(
            width: 200,
            height: 200,
            child: CustomPaint(
              painter: RectanglePainter(),
            ),
          ),
        ),
      ),
    );
  }
}

class RectanglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue.withOpacity(0.3) // Set the color and opacity
      ..style = PaintingStyle.fill;

    final rect = Rect.fromCenter(
      center: Offset(size.width / 2, size.height / 2),
      width: 100,
      height: 100,
    );

    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
