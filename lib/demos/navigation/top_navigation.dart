import 'package:flutter/material.dart';
import 'bottompages/home.dart';
import 'bottompages/add.dart';
import 'bottompages/setting.dart';



/**
 *
 * 创建人：xuqing
 * 创建时间：2020年10月17日15:15:13
 * 类说明: 页面状态保持的切换tab
 *
 *
 */
class TopNavigation extends StatefulWidget {
  TopNavigation({Key key}) : super(key: key);
  @override
  _TopNavigationState createState() {
    return _TopNavigationState();
  }
}
class _TopNavigationState extends State<TopNavigation> with SingleTickerProviderStateMixin {
  TabController  _tabController;
  @override
  void initState() {
    _tabController = TabController(
      length: 3,
      vsync: this,
    );
    super.initState();
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("keepstatedemo"),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(icon: Icon(Icons.home),text: ("主页"),),
            Tab(icon: Icon(Icons.add),text: ("添加")),
            Tab(icon: Icon(Icons.settings),text: ("设置")),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Home(),
          Add(),
          Setting(),
        ],
      ),
    );
  }
}