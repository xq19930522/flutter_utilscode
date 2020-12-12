import 'package:flutter/material.dart';
import 'details/no_create_namedetails.dart';

/**
 * 创建人：xuqing
 * 创建时间：2020年10月2日16:55:03
 * 类说明：非命名路由示例
 *
 *
 *
 */

class NoCreateName extends StatefulWidget {
  NoCreateName({Key key}) : super(key: key);
  @override
  _NoCreateNameState createState() {
    return _NoCreateNameState();
  }
}
class _NoCreateNameState extends State<NoCreateName> {
  String  _title="我是跳转时候传的值";
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
        title: Text("非命名路由示例"),
      ),
      body: Container(
        child: Column(
          children: [
            RaisedButton(
                child: Text("非命名路由跳转"),
                onPressed: (){
                  //不带参数跳转
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context){
                          return NoCreateNameDetails();
                        }),
                  );
            }),
            RaisedButton(
                child: Text("非命名路由跳转并且传参"),
                onPressed: (){
                   //带参数跳转
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context){
                          return NoCreateNameDetails(gettitle:_title,);
                        }),
                  );
                }),
          ],
        ),
      ),
    );
  }
  
}