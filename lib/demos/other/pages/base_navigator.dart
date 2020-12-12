import 'package:flutter/material.dart';


/**
 *
 * 创建人：xuqing
 * 创建时间：2020年10月2日20:09:46
 * 类说明：根路由和路由替换
 *
 *
 */
class BaseNavigator extends StatefulWidget {
  BaseNavigator({Key key}) : super(key: key);

  @override
  _BaseNavigatorState createState() {
    return _BaseNavigatorState();
  }
}

class _BaseNavigatorState extends State<BaseNavigator> {
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
      appBar: AppBar(title: Text("根路由和路由替换"),

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