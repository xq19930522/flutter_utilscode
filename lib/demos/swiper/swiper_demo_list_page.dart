import 'package:flutter/material.dart';
import '../../widgets/jh_text_list.dart';


class SwiperDemoListPage extends StatelessWidget {
  final List titleData = [
    'swiper1-全屏',
    'swiper2-缩放',
    'swiper3 - flutter_swiper',
    'swiper4 - carousel_slider',
    '全屏',
  ];
  final List routeData = [
    'SwiperTest1Page',
    'SwiperTest2Page',
    'SwiperTest3Page',
    'SwiperTest4Page',
    'FullScreenSwiperWidget',
  ];

  @override
  Widget build(BuildContext context) {
    return JhTextList(
      title: "轮播",
      dataArr: titleData,
      callBack: (index, str) {
        Navigator.pushNamed(context, routeData[index]);
      },
    );
  }
}
