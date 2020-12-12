import 'package:flutter/material.dart';


/**
 *
 * 创建人：xuqing
 * 创建时间:2020年10月2日17:08:55
 * 类说明:命名路由详情页面  我们这边写了一个gettitle
 * 变量来接收路由跳转的适合传过来的值不并且显示在UI层上面
 *
 *
 */

class NoCreateNameDetails extends StatefulWidget {

   final String  gettitle;

  NoCreateNameDetails({Key key,this.gettitle}) : super(key: key);

  @override
  _NoCreateNameDetailsState createState() {
    return _NoCreateNameDetailsState();
  }
}

class _NoCreateNameDetailsState extends State<NoCreateNameDetails> {
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
        title: Text(widget.gettitle==null?"不带参数跳转":widget.gettitle),
      ),
      body: Container(

        child: Text("我是非命名路由详情页面"),
      ),
    );
  }

}