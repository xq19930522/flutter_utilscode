import 'package:flutter/material.dart';

/**
 *创建人：xuqing
 * 创建时间：2020-7-19
 * 类说明:首页
 *
 */

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() {
    return _HomeState();
  }
}
class _HomeState extends State<Home> with AutomaticKeepAliveClientMixin{
  int  _cunter=0;
  @override
  bool get wantKeepAlive =>true;
  void _intCruementCounter(){
    setState(() {
      _cunter++;
    });
  }
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("点击一次增加一次数值"),
            Text("$_cunter",style: TextStyle(fontSize: 20,color: Colors.blue))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _intCruementCounter,
        tooltip: "Incement",
        child: Icon(Icons.add),
      ),
    );
  }
}