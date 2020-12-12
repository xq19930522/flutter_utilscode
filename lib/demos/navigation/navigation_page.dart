import 'package:flutter/material.dart';
import '../../widgets/jh_text_list.dart';

/**
 *
 *  创建人：xuqing
 *  创建时间：2020年12月11日20:49:36
 *  类说明： 导航demo
 *
 *
 *
 */


final List titleData = [
  "顶部导航",
  "底部导航",
];
final List routeData = [
  "TopNavigation",
  "BotttomNavigation",

];


class NavigationPage extends StatelessWidget {
  NavigationPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  JhTextList(
      title: "ListViewDemoLists",
      dataArr: titleData,
      callBack: (index, str) {
        print(routeData[index]);
        Navigator.pushNamed(context, routeData[index]);
      },
    );

  }

}





