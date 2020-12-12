import 'package:flutter/material.dart';
import '../widgets/jh_text_list.dart';


class DemoListsPage extends StatelessWidget {
  final List titleData = [
    "UI",
    "导航",
    "ListView",
    "GridView",
    "弹框",
    "Form",
    "图片选择",
    "跳转传值和回传",
    "网络请求",
    "屏幕适配",
    "baseNav",
    "JhForm",
    "chart",
    'JhTopTabBar',
    '搜索框',
    '小红点',
    '二维码',
    '轮播',
    'Animation',
    'AES',
    '列表侧滑',
    '城市选择列表',
    "贝塞尔曲线",
    "地址选择器",


  ];
  final List routeData = [
    "UIDemoListsPage",
    "NavigationPage",
    "ListViewDemoListsPage",
    "GridViewDemoListsPage",
    "AlertDemoListsPage",
    "FormTest",
    "PhotoSelectTest",
    "PassValuePage",
    "HttpDemoListsPage",
    "ScreenAdaptation",
    "NavTestPage",
    "FormDemoListsPage",
    "ChartDemoListPage",
    "TopTabBarDemoListPage",
    "SearchDemoListPage",
    "RedDotPage",
    'QRCodeTest',
    'SwiperDemoListPage',
    'AnimationDemoListPage',
    'AESTestPage',
    'SideslipTestPage',
    'CitySelectListPage',
    "BezierCurve",
    "SiteSelectPage",

  ];

  @override
  Widget build(BuildContext context) {
    return JhTextList(
      title: "DemoLists",
      dataArr: titleData,
      callBack: (index, str) {
        print(str);
        Navigator.pushNamed(context, routeData[index]);
      },
    );
  }
}
