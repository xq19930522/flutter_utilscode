import 'package:flutter/material.dart';
/***
 *
 * 创建人：xuqing
 * 创建时间：2020年10月16日20:28:35
 * ；类说明：设置页面
 *
 *
 */
class Setting extends StatefulWidget {
  Setting({Key key}) : super(key: key);
  @override
  _SettingState createState() {
    return _SettingState();
  }
}
class _SettingState extends State<Setting>with  AutomaticKeepAliveClientMixin  {
  List<String>datastirng=[];
  @override
  bool get wantKeepAlive =>true;

  void addlist() {
    setState(() {
      List<String> list = [];
      for (int i = 0; i < 5; i++) {
        list.add(i.toString());
      }
      datastirng.addAll(list);
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
      body:Container(
        child: GridView.builder(
            itemCount: datastirng.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //横轴元素个数
                crossAxisCount: 3,
                //纵轴间距
                mainAxisSpacing: 20.0,
                //横轴间距
                crossAxisSpacing: 10.0,
                //子组件宽高长度比例
                childAspectRatio: 1.0),
            itemBuilder: (BuildContext context, int index) {
              //Widget Function(BuildContext context, int index)
              return getItemContainer(datastirng,index);
            }),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Incement",
        child: Icon(Icons.add),
        onPressed: (){
          addlist();
        },
      ),
    );
  }
  Widget  getItemContainer(List<String>data, int index){
    return Container(
      width: 150,
      height: 100,
      color: Colors.blue,
      child:Center(
        child: Text(data[index]+"条数据"),
      ),
    );
  }
}