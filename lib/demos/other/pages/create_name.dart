import 'package:flutter/material.dart';


/**
 *
 * 创建人：xuqing
 * 创建时间：2020年10月2日17:19:13
 * 类说明： 命名路由
 *
 */


class CreateName extends StatefulWidget {
  CreateName({Key key}) : super(key: key);

  @override
  _CreateNameState createState() {
    return _CreateNameState();
  }
}

class _CreateNameState extends State<CreateName> {
  String  title="我是命名路由传过来的参数";

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
        title: Text("命名路由"),
      ),
      body: Column(
        children: [
          RaisedButton(
            child: Text("命名路由跳转"),
              onPressed:(){
              Navigator.pushNamed(context, "/createnamedetails",arguments:{"msg":null});
          }),

          RaisedButton(
              child: Text("命名路由跳转并且传值"),
              onPressed:(){
                Navigator.pushNamed(context,"/createnamedetails",arguments:{"msg":title});
              }),
        ],
      ),

    );
  }







}