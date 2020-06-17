import 'package:flutter/widgets.dart';

class WavePathClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final heightBreak = size.height * 0.90;
    final totalCurves = 2;
    final amplitudUp = heightBreak * 0.90;
    final amplitudDown = size.height;
    final finalXpoin = size.width / totalCurves;
    final points = {'x': 0.0, 'y': heightBreak};


    path.lineTo(0.0, heightBreak);
    path.cubicTo(points['x'], points['y'], finalXpoin / 2, amplitudUp,
        finalXpoin, heightBreak);

    path.cubicTo(finalXpoin, heightBreak, size.width * 0.75, amplitudDown,
        size.width, heightBreak);
    path.lineTo(size.width, 0.0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(oldClipper) => false;
}
