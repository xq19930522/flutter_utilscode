import 'package:flutter/material.dart';
import '../demos/demo_lists_page.dart';
//alert
import '../demos/Alert/alert_demo_lists_page.dart';
import '../demos/alert/bottom_sheet_test.dart';
import '../demos/alert/alert_test.dart';
import '../demos/alert/jhDialog_test_page.dart';



//toast
import '../demos/alert/toast/toast_demo_lists_page.dart';
import '../demos/alert/toast/toast_test.dart';
//chart
import '../demos/chart/chart_demo_list_page.dart';
import '../demos/chart/chart_page1.dart';
import '../demos/chart/chart_page2.dart';
import '../demos/chart/eChart_page1.dart';
import '../demos/chart/eChart_page2.dart';
import '../demos/chart/eChart_page3.dart';
import '../demos/chart/eChart_page4.dart';
import '../demos/chart/mpChart_line_page1.dart';
import '../demos/chart/mpChart_bar_page1.dart';
import '../demos/chart/mpChart_combined_page.dart';



//表单
import '../demos/form/form_demo_lists_page.dart';
import '../demos/form/login_textfeld_test_page.dart';
import '../demos/form/input_textfield_test_page.dart';
import '../demos/form/form_Input_cell_test_page.dart';
import '../demos/form/form_select_cell_test_page.dart';
import '../demos/form/set_cell_test_page.dart';
import '../demos/form/form_test_page.dart';
//gridView
import '../demos/gridView/gridview_demo_lists_page.dart';
import '../demos/gridView/gridview_test1.dart';
import '../demos/gridView/gridview_test2.dart';
import '../demos/gridView/gridview_test3.dart';
import '../demos/gridView/gridview_test4.dart';
import '../demos/gridView/gridview_test5.dart';

//http
import '../demos/http/http_demo_lists_page.dart';
import '../demos/http/http_test1_page.dart';
import '../demos/http/http_page_test_page.dart';

//ListView
import '../demos/listView/listview_demo_lists_page.dart';
import '../demos/listView/listview_test.dart';
import '../demos/listView/listview_test2.dart';
import '../demos/listView/listview_test3.dart';
import '../demos/listView/listview_test4.dart';
import '../demos/listView/listview_test5.dart';
import '../demos/listView/listview_test_card.dart';
import '../demos/listView/listview_test_custom_vc.dart';
import '../demos/listView/listview_test_simple_pull_down.dart';
import '../demos/listView/listview_test_pull_down_vc.dart';
import '../demos/listView/listview_group_page2.dart';
import '../demos/listView/listview_group_page3.dart';
import '../demos/listView/listview_group_page.dart';
import '../demos/listView/listview_header_page.dart';
import '../demos/listView/listview_many_layout.dart';
import '../demos/listView/listview_complex_layout.dart';
//other
import '../demos/other/form_test.dart';
import '../demos/other/photo_select_test.dart';
import '../demos/other/pass_value_page.dart';
import '../demos/other/nav_test.dart';
import '../demos/other/red_dot_page.dart';
import '../demos/other/qr_code_test.dart';
import '../demos/other/aes_test_page.dart';
import '../demos/other/sideslip_test_page.dart';
import '../demos/other/city_select_list_page.dart';
import '../demos/other/animation/animation_demo_list_page.dart';
import '../demos/other/animation/3DBall_page.dart';
import '../demos/other/animation/3DBall_page2.dart';
import '../demos/other/animation/3DBall_page3.dart';
import '../demos/other/animation/3DBall_page4.dart';
import '../demos/other/animation/tag_cloud_page.dart';
import '../demos/other/pages/details/create_namedetails.dart';
import '../demos/other/pages/create_name.dart';
import '../demos/other/pages/loginandregister/login.dart';
import '../demos/other/pages/loginandregister/register_first.dart';
import '../demos/other/pages/loginandregister/register_sencond.dart';
import '../demos/other/pages/base_navigator.dart';
import '../demos/other/pages/pass_value_home.dart';
import '../demos/other/pages/remove_navigator.dart';
import '../demos/other/pages/loginandregister/register_p3.dart';


//search
import '../demos/search/search_demo_list_page.dart';
import '../demos/search/search_test1_page.dart';
import '../demos/search/search_test2_page.dart';
import '../demos/search/search_test3_page.dart';
import '../demos/search/search_bar_demo.dart';


//TopTabBar
import '../demos/topTabBar/top_tabbar_demo_list_page.dart';
import '../demos/topTabBar/top_tabbar_test1_page.dart';
import '../demos/topTabBar/top_tabbar_test2_page.dart';
import '../demos/topTabBar/top_tabbar_test3_page.dart';


//UI
import '../demos/ui/ui_demo_lists.dart';
import '../demos/ui/ui_page.dart';
import '../demos/ui/ui_page2.dart';
import '../demos/ui/scroll_page.dart';

import '../demos/swiper/swiper_demo_list_page.dart';
import '../demos/swiper/swiper_test1_page.dart';
import '../demos/swiper/swiper_test2_page.dart';
import '../demos/swiper/swiper_test3_page.dart';
import '../demos/swiper/swiper_test4_page.dart';
import '../new_feature/full_screen_swiper_widget.dart';

//导航
import '../demos/navigation/bottom_navigation.dart';
import '../demos/navigation/navigation_page.dart';
import '../demos/navigation/top_navigation.dart';

//屏幕适配
import '../demos/screenadaptation/screen_adaptation.dart';

//贝塞尔曲线
import '../demos/curve/bezier_curve.dart';
import '../demos/curve/curvepages/u_shaped_curve.dart';
import '../demos/curve/curvepages/wave_shaped_curve..dart';
import '../demos/siteselect/site_select_page.dart';





final String home = '/';
final String loginPage = 'LoginPage';
final String onePage = '/onePage';
final String twoPage = '/twoPage';
final String threePage = '/threePage';
final String fourPage = '/fourPage';

final String demoListsPage = 'DemoListsPage';

// 配置路由命名信息
final routes = {
  demoListsPage: (context) => DemoListsPage(),
  //Alert
  "AlertDemoListsPage": (context) => AlertDemoListsPage(),
      "AlertTestPage": (context) => AlertTestPage(),
      "BottomSheetTest": (context) => BottomSheetTest(),
      //toast
      "ToastDemoListsPage": (context) => ToastDemoListsPage(),
      "ToastTestPage": (context) => ToastTestPage(),
  "JhDialogTestPage": (context) => JhDialogTestPage(),

  //chart
  "ChartDemoListPage": (context) => ChartDemoListPage(),
  "ChartPage1": (context) => ChartPage1(),
  "ChartPage2": (context) => ChartPage2(),
  "EChartPage1": (context) => EChartPage1(),
  "EChartPage2": (context) => EChartPage2(),
  "EChartPage3": (context) => EChartPage3(),
  "EChartPage4": (context) => EChartPage4(),
  "MpChartLinePage1": (context) => MpChartLinePage1(),
  "MpChartBarPage1": (context) => MpChartBarPage1(),
  "MpChartCombinedPage": (context) => MpChartCombinedPage(),



  //表单
  "FormDemoListsPage": (context) => FormDemoListsPage(),
      "LoginTextFieldTestPage": (context) => LoginTextFieldTestPage(),
      "InputTextFieldTestPage": (context) => InputTextFieldTestPage(),
      "FormInputCellTestPage": (context) => FormInputCellTestPage(),
      "FormSelectCellTestPage": (context) => FormSelectCellTestPage(),
      "SetCellTestPage": (context) => SetCellTestPage(),
      "FormTestPage": (context) => FormTestPage(),

  //GridView
  "GridViewDemoListsPage": (context) => GridViewDemoListsPage(),
      "GridViewTest1": (context) => GridViewTest1(),
      "GridViewTest2": (context) => GridViewTest2(),
      "GridViewTest3": (context) => GridViewTest3(),
      "GridViewTest4": (context) => GridViewTest4(),
      "GridViewTestPage5": (context) => GridViewTestPage5(),

  //http
  "HttpDemoListsPage": (context) => HttpDemoListsPage(),
      "HttpTest1Page": (context) => HttpTest1Page(),
      "HttpPageTestPage": (context) => HttpPageTestPage(),

  //ListView
  "ListViewDemoListsPage": (context) => ListViewDemoListsPage(),
      "ListViewTest": (context) => ListViewTest(),
      "ListViewTest2": (context) => ListViewTest2(),
      "ListViewTest3": (context) => ListViewTest3(),
      "ListViewTest4": (context) => ListViewTest4(),
      "ListViewTest5": (context) => ListViewTest5(),
      "ListViewTest_Card": (context) => ListViewTest_Card(),
      "ListViewTest_CustomVC": (context) => ListViewTest_CustomVC(),
      "ListViewTest_SimplePullDown": (context) => ListViewTest_SimplePullDown(),
      "ListViewTest_PullDownVC": (context) => ListViewTest_PullDownVC(),
      "ListViewGroupPage": (context) => ListViewGroupPage(),
      "ListViewGroupPage2": (context) => ListViewGroupPage2(),
      "ListViewGroupPage3": (context) => ListViewGroupPage3(),
      "ListViewHeaderPage": (context) => ListViewHeaderPage(),
       "ListviewManyLayout":(context) =>ListviewManyLayout(),
      "ListComplexLayout":  (context) =>ListComplexLayout(),

  //search
  "SearchDemoListPage": (context) => SearchDemoListPage(),
  "SearchTest1Page": (context) => SearchTest1Page(),
  "SearchTest2Page": (context) => SearchTest2Page(),
  "SearchTest3Page": (context) => SearchTest3Page(),
  "SearchBarDemo" :(context)=>SearchBarDemo(),


   //TopTabBarDemoListPage
  "TopTabBarDemoListPage": (context) => TopTabBarDemoListPage(),
        "TopTabBarTest1Page": (context) => TopTabBarTest1Page(),
        "TopTabBarTest2Page": (context) => TopTabBarTest2Page(),
        "TopTabBarTest3Page": (context) => TopTabBarTest3Page(),
  //ui
  "UIDemoListsPage": (context) => UIDemoListsPage(),
        "UIPage": (context) => UIPage(),
        "UIPage2": (context) => UIPage2(),
  "ScrollPage": (context) => ScrollPage(),






  "SwiperDemoListPage":(context)=>SwiperDemoListPage(),
  'SwiperTest1Page':(context)=>SwiperTest1Page(),
  'SwiperTest2Page':(context)=>SwiperTest2Page(),
  'SwiperTest3Page':(context)=>SwiperTest3Page(),
  'SwiperTest4Page':(context)=>SwiperTest4Page(),


  //other
  'AnimationDemoListPage':(context)=>AnimationDemoListPage(),
  'AESTestPage':(context)=>AESTestPage(),
  'DBallPage':(context)=>DBallPage(),
  'DBallPage2':(context)=>DBallPage2(),
  'DBallPage3':(context)=>DBallPage3(),
  'DBallPage4':(context)=>DBallPage4(),
  'TagCloudPage':(context)=>TagCloudPage(),
  'FormTest':(context)=>FormTest(),
  'PhotoSelectTest':(context)=>PhotoSelectTest(),
  'PassValuePage':(context)=>PassValuePage(),
  'QRCodeTest':(context)=>QRCodeTest(),
  'CitySelectListPage':(context)=>CitySelectListPage(),
  'SideslipTestPage':(context)=>SideslipTestPage(),
  'FullScreenSwiperWidget':(context)=>FullScreenSwiperWidget(),
  "FormTest": (context) => FormTest(),
  "PhotoSelectTest": (context) => PhotoSelectTest(),
  "PassValuePage": (context) => PassValuePage(),
  "NavTestPage": (context) => NavTestPage(),
  "RedDotPage": (context) => RedDotPage(),
  "QRCodeTest": (context) => QRCodeTest(),


  // 导航
  "BotttomNavigation": (context) => BotttomNavigation(),
  "NavigationPage": (context) => NavigationPage(),
  "TopNavigation":(context)=>TopNavigation(),

  //屏幕适配
   "ScreenAdaptation":(context)=>ScreenAdaptation(),


  //贝塞尔曲线
  "BezierCurve":(context)=>BezierCurve(),
  "UShapedCurve":(context)=>UShapedCurve(),
  "SaveShapedCurve":(context)=>SaveShapedCurve(),


  "/createnamedetails":(context,{arguments})=>CreateNameDetails(arguments:arguments),
  "/createname":(context)=>CreateName(),
  "/login":(context)=>Login(),
  "/registerfirst":(context)=>RegisterFirst(),
  "/registersencond":(context)=>RegisterSencond(),
  "/basenavigator":(context)=>BaseNavigator(),
  "/PassValueHome":(context)=>PassValueHome(),
  "/removenavigator":(context)=>RemoveNavigator(),
  "/registep3":(context)=>RegisterP3(),

  // 地址选择器
  "SiteSelectPage" : (context)=>SiteSelectPage(),



};

class UnknownPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('跳转错误'),
        centerTitle: true,
      ),
    );
  }
}


//固定写法
var    onGenerateRoute=(RouteSettings settings) {
// 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context,
                  arguments: settings.arguments));
      return route;
    } else {
      final Route route = MaterialPageRoute(
          builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};

