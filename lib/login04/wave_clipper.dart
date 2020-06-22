import 'package:flutter/widgets.dart';

class Wave01PathClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final heightBreak = size.height * .88;
    final firstInitialControlPoint = Offset(0.0, heightBreak);
    final firstEndControlPoint = Offset(size.width * .52, size.height * .92);
    final firstAmplitud = Offset(size.width * .25, heightBreak * .90);

    final endInitialControlPoint = Offset(size.width * .70, size.height);
    final endControlPoint = Offset(size.width, size.height * .92);
    final endAmplitud = Offset(size.width * .85, size.height);

    path.lineTo(0.0, heightBreak);
    path.cubicTo(
        firstInitialControlPoint.dx,
        firstInitialControlPoint.dy,
        firstAmplitud.dx,
        firstAmplitud.dy,
        firstEndControlPoint.dx,
        firstEndControlPoint.dy);

    path.cubicTo(endInitialControlPoint.dx, endInitialControlPoint.dy,
        endAmplitud.dx, endAmplitud.dy, endControlPoint.dx, endControlPoint.dy);

    //corner bottom Right
    path.lineTo(size.width, size.height);

    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(oldClipper) => false;
}

class Wave02PathClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final heightBreak = size.height * .9;
    final firstGivenPoint = Offset(size.width * .6, heightBreak);
    final firstControlPoint = Offset(size.width * .35, heightBreak * .9);
    final lastEndPoint = Offset(size.width, heightBreak);
    final lastControlPoint = Offset(size.width * .85, size.height);

    path.lineTo(0.0, heightBreak);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstGivenPoint.dx, firstGivenPoint.dy);

    path.quadraticBezierTo(lastControlPoint.dx, lastControlPoint.dy,
        lastEndPoint.dx, lastEndPoint.dy);
/*     corner bottom Right    
    path.lineTo(size.width, size.height); */
    path.lineTo(size.width, 0.0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(oldClipper) => false;
}

class Wave03PathCLipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height * 0.9);
    path.quadraticBezierTo(
        size.width * .35, size.height, size.width * .6, size.height * .9);
    path.quadraticBezierTo(
        size.width * .85, size.height * .80, size.width, size.height * 0.9);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(oldClipper) => false;
}
