import 'package:flutter/material.dart';


/**
 * 创建人 ：xuqing
 * 创建时间 ：2020年12月12日10:49:08
 * 类说明： 波浪形贝塞尔曲线
 *
 *
 */




class SaveShapedCurve extends StatefulWidget {
  SaveShapedCurve({Key key}) : super(key: key);

  @override
  _SaveShapedCurveState createState() {
    return _SaveShapedCurveState();
  }
}

class _SaveShapedCurveState extends State<SaveShapedCurve> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          ClipPath(
            clipper: BottomClipper(),
            child: Container(
              color: Colors.blue,
              height: 200,
            ),
          )
        ],
      ),
    );
  }
}

class  BottomClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path=Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height-40);
    var firstControlPoint=Offset(size.width/4, size.height);
    var firstendPoint=Offset(size.width/2.25, size.height-30);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstendPoint.dx, firstendPoint.dy);
    var  secondConttorPoint=Offset(size.width/4*3, size.height-90);
    var  secondendPoint=Offset(size.width, size.height-40);
    path.quadraticBezierTo(secondConttorPoint.dx, secondConttorPoint.dy,
        secondendPoint.dx, secondendPoint.dy);
    path.lineTo(size.width, size.height-40);
    path.lineTo(size.width,0);
    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}