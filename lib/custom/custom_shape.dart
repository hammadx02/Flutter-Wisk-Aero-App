import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter{
  
  @override
  void paint(Canvas canvas, Size size) {
    
    

  // Layer 1
  
  Paint paint_stroke_0 = Paint()
      ..color = Colors.yellow
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;
     
         
    Path path_0 = Path();
    path_0.moveTo(size.width*-0.0032763,size.height*0.0033000);
    path_0.lineTo(0,size.height);
    path_0.quadraticBezierTo(size.width*0.1833741,size.height,size.width*0.2444988,size.height);
    path_0.cubicTo(size.width*0.3440098,size.height*0.9498000,size.width*0.6341809,size.height*0.9533000,size.width*0.7334963,size.height);
    path_0.quadraticBezierTo(size.width*0.8007335,size.height,size.width*1.0024450,size.height);
    path_0.lineTo(size.width*0.9975550,0);
    path_0.quadraticBezierTo(size.width*0.7995110,0,size.width*0.7334963,0);
    path_0.cubicTo(size.width*0.6342787,size.height*0.0466000,size.width*0.3438142,size.height*0.0568000,size.width*0.2444988,0);
    path_0.quadraticBezierTo(size.width*0.1825550,size.height*0.0008250,size.width*-0.0032763,size.height*0.0033000);
    path_0.close();

    canvas.drawPath(path_0, paint_stroke_0);
  
    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  
}
