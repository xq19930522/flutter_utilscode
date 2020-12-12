import 'package:flutter/material.dart';
import '../../widgets/jh_text_list.dart';
import '../../routes/navigator_utils.dart';



/**
 * 创建人 ：xuqing
 * 创建时间 ：2020年12月12日10:49:08
 *
 *
 *
 */


class ChartDemoListPage extends StatelessWidget {

  final List titleData = ["Chart1","Chart2","EChart1 - 平滑折线图 警戒线","EChart2 - 多图表","EChart3 - 多图表 - 动态数据","EChart4 - 渐变折线图","MpChartLine1","MpChartBar1","MpChartCombined",];
  final List routeData = ["ChartPage1","ChartPage2","EChartPage1","EChartPage2","EChartPage3","EChartPage4","MpChartLinePage1","MpChartBarPage1","MpChartCombinedPage",];
  @override
  Widget build(BuildContext context) {
    return  JhTextList(
      title: "Chart",dataArr: titleData,
      callBack: (index,str){
        print(index);
        Navigator.pushNamed(context, routeData[index]);

      },
    );

  }
}