import 'package:flutter/material.dart';
import '../../widgets/jh_text_list.dart';
/**
 *
 * 创建人 ：xuqing
 * 创建时间：2020年12月12日10:45:19
 * 类说明：贝塞尔曲线
 *
 *
 *
 */


final List titleData = [
  "U形贝塞尔曲线",
  "波浪形贝塞尔曲线",
];
final List routeData = [
  "UShapedCurve",
  "SaveShapedCurve",

];

class BezierCurve extends StatelessWidget {
  BezierCurve({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return JhTextList(
      title: "贝塞尔曲线",
      dataArr: titleData,
      callBack: (index, str) {
        print(routeData[index]);
        Navigator.pushNamed(context, routeData[index]);
      },
    );
  }

}







