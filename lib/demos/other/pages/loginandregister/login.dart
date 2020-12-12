

import 'package:flutter/material.dart';
/**
 *
 * 创建人：xuqing
 * 创建时间：2020年10月2日19:55:42
 * 类说明：登录页面
 *
 */

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
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
        title: Text("登录页面"),
      ),
      body: Column(
        children: [
          Text("这是登录页面"),
          SizedBox(height: 40,),
          RaisedButton(
              child: Text("登录"),
              onPressed: (){
              Navigator.of(context).pop();

              })
        ],
      ),
    );
  }
}