import 'package:flutter/material.dart';


/**
 * 创建人 ：xuqing
 * 创建时间 ：2020年12月12日10:49:08
 *
 *
 *
 */




class UShapedCurve extends StatefulWidget {
  UShapedCurve({Key key}) : super(key: key);

  @override
  _UShapedCurveState createState() {
    return _UShapedCurveState();
  }
}

class _UShapedCurveState extends State<UShapedCurve> {
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
            clipper: BottomClippertest(),
            child: Container(
              color: Colors.deepOrangeAccent,
              height: 200,
            ),
          )
        ],
      ),
    );
  }
}
class  BottomClippertest extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path=Path();
    path.lineTo(0, 0); //第一个点
    path.lineTo(0, size.height-60);//第二个点
    var firstControlPoint=Offset(size.width/2, size.height);  //曲线开始点
    var firstendPoint=Offset(size.width, size.height-60); // 曲线结束点
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstendPoint.dx, firstendPoint.dy);
    path.lineTo(size.width, size.height-60); //第四个点
    path.lineTo(size.width,0);  // 第五个点
    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}