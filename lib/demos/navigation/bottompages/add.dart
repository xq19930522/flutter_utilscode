import 'package:flutter/material.dart';
/***
 * 创建人:xuqing
 * 创建时间：2020年10月16日21:20:58
 * 类说明: 添加页面
 *
 */
class Add extends StatefulWidget {
  Add({Key key}) : super(key: key);
  @override
  _AddState createState() {
    return _AddState();
  }
}
class _AddState extends State<Add>   with  AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive =>true;
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
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (BuildContext context,int index){
          return itemWidget(index);
        },
      ),
    );
  }
  Widget itemWidget(int index){
    return GestureDetector(
        child:Container(
          margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Center(
            child: Text("我是第$index条数据"),
          ),
        )
    );
  }
}