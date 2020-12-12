import 'package:flutter/material.dart';


/**
 * 创建人：xuqing
 * 创建时间：2020年8月1日01:18:25
 * 类说明：listview 多布局
 *
 */

class ListviewManyLayout extends StatefulWidget {
  ListviewManyLayout({Key key}) : super(key: key);

  @override
  _ListviewManyLayoutState createState() {
    return _ListviewManyLayoutState();
  }
}

class _ListviewManyLayoutState extends State<ListviewManyLayout> {
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
        title: Text("listview多布局"),
        centerTitle: true,
      ),
      body: Container(
        child: ListView.builder(
            itemCount: 20,
            itemBuilder: (BuildContext context , int position){
              if(position%2==0){
                return itemWidget(position);
              }else {
                return newitemWidget(position);
              }
            }),
      ),
    );
  }
  Widget itemWidget(int index){
    return GestureDetector(
      child: Container(
        width: double.infinity,
        height: 100,
        alignment: Alignment.center,
        child: Text("我是第一个item",style: TextStyle(
            color: Colors.red,
            fontSize: 40
        ),),
      ),

    );
  }

  Widget newitemWidget(index){
    return GestureDetector(
      child: Row(
        children: <Widget>[
          new Text("我是徐庆",style: TextStyle(
              color: Colors.green,
              fontSize: 25
          ),),
          Expanded(
            child: Icon(Icons.add),
          )
        ],
      ),
    );

  }
}