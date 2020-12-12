import 'package:flutter/material.dart';
import 'no_create_name.dart';
/**
 *
 * 创建人：xuqing
 * 创建时间：2020年10月2日19:55:42
 * 类说明：主页
 *
 */

class PassValueHome extends StatefulWidget {
  PassValueHome({Key key}) : super(key: key);

  @override
  _PassValueHomeState createState() {
    return _PassValueHomeState();
  }
}

class _PassValueHomeState extends State<PassValueHome> {
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
      appBar: AppBar(
        title: Text("路由管理"),
      ),
      body: Column(
        children: [
          RaisedButton(
              child: Text("非命名路由"),
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context){
                        return NoCreateName();
                      }),
                );
              }),

          RaisedButton(
              child: Text("命名路由"),
              onPressed: (){
                Navigator.pushNamed(context, "/createname");

              }),
          RaisedButton(
              child: Text("根路由"),
              onPressed: (){
                Navigator.pushNamed(context, "/basenavigator");
              }),
          RaisedButton(
              child: Text("路由栈移除"),
              onPressed: (){
             Navigator.pushNamed(context, "/removenavigator");
              }),
        ],
      ),
    );
  }
}