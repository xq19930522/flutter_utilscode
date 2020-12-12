import 'package:flutter/material.dart';
/***
 *
 * 创建人：xuqing
 * 创建时间：2020年10月2日17:28:06
 * 类说明：命名路由详情页面
 *
 */

class CreateNameDetails extends StatefulWidget {
  final arguments;
  CreateNameDetails({Key key,this.arguments}) : super(key: key);
  @override
  _CreateNameDetailsState createState() {
    return _CreateNameDetailsState();
  }
}
class _CreateNameDetailsState extends State<CreateNameDetails> {
//  final  arguments;
  String  gettitle;
/*  _CreateNameDetailsState(this.arguments);*/
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
        title: Text(widget.arguments["msg"]==null?"不带参数命名路由跳转":widget.arguments["msg"]),
      ),
      body: Container(
        child: Center(
          child: Text("我是命名路由详情页面"),
        ),
      ),
    );
  }







}