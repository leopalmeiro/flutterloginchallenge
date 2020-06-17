import 'package:flutter/widgets.dart';

class Wave01PathClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final heightBreak = size.height * .9;
    final pointInitial = Offset(0.0, heightBreak);
    final pointFinal = Offset(size.width / 2, heightBreak);
    final amplitud = Offset(size.width / 4, heightBreak * .9 );
  

    path.lineTo(0.0, heightBreak);
    path.cubicTo(pointInitial.dx, pointInitial.dy, amplitud.dx, amplitud.dy, pointFinal.dx-15, pointFinal.dy);
    path.cubicTo(pointFinal.dx, pointFinal.dy, size.width * .75, size.height, size.width, heightBreak);

    
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
    final heightBreak = size.height * .8;
    final pointInitial = Offset(0.0, heightBreak);
    final pointFinal = Offset(size.width / 2, heightBreak);
    final amplitud = Offset(size.width / 4, heightBreak * .9 );
  

    path.lineTo(0.0, heightBreak);
    path.cubicTo(pointInitial.dx, pointInitial.dy, amplitud.dx, amplitud.dy, pointFinal.dx-15, pointFinal.dy);
    path.cubicTo(pointFinal.dx, pointFinal.dy, size.width * .75, size.height, size.width, heightBreak);

        //path.lineTo(size.width, size.height);

    path.lineTo(size.width, 0.0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(oldClipper) => false;
}