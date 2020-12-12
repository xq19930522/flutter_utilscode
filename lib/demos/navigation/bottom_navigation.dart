import 'package:flutter/material.dart';
import 'bottompages/home.dart';
import 'bottompages/setting.dart';
import 'bottompages//add.dart';

/**
 *
 *
 *创建人：xuqing
 * 创建时间：2020年12月10日20:58:57
 * 类说明：底部导航
 *
 *
 */

class BotttomNavigation extends StatefulWidget {
  BotttomNavigation({Key key}) : super(key: key);

  @override
  _BotttomNavigationState createState() {
    return _BotttomNavigationState();
  }
}

class _BotttomNavigationState extends State<BotttomNavigation> {
  List<StatefulWidget>pagelist=[
    Home(),
    Add(),
    Setting()
  ];
  var  _currentIndex=0;
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
      /*    appBar: AppBar(
        title: Text("tabbar"),
      ),*/

      body:this.pagelist[this._currentIndex] ,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("首页")),
          BottomNavigationBarItem(icon: Icon(Icons.add),title: Text("添加")),
          BottomNavigationBarItem(icon: Icon(Icons.settings),title: Text("设置")),
        ],
        iconSize: 20.0,
        currentIndex: this._currentIndex,
        onTap: (int index){
          setState(() {
            _currentIndex=index;
          });
        },
      ),
    );
  }
}






