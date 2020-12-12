import 'package:flutter/material.dart';


/**
 *
 * 创建人：xuqing
 * 创建时间：2020年10月2日20:09:46
 * 类说明：
 *
 *
 */

class RemoveNavigator extends StatefulWidget {
  RemoveNavigator({Key key}) : super(key: key);

  @override
  _RemoveNavigatorState createState() {
    return _RemoveNavigatorState();
  }
}

class _RemoveNavigatorState extends State<RemoveNavigator> {
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
      appBar: AppBar(title: Text("移除路由"),

      ),
      body: Column(
        children: [

          RaisedButton(
              child: Text("跳转去登录页面"),
              onPressed: (){
                Navigator.pushNamed(context, "/login");

              }),
          RaisedButton(
              child: Text("跳转去第一个注册页面"),
              onPressed: (){
                Navigator.pushNamed(context, "/registerfirst");
              }),

        ],
      ),


    );
  }
}