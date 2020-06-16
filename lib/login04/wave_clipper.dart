import 'package:flutter/widgets.dart';

class WavePathClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height);
    path.lineTo(10, size.height - 10);
    path.lineTo(20, size.height);
    path.lineTo(size.width, size.height);

    path.lineTo(size.width, 0.0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(oldClipper) => false;
}
