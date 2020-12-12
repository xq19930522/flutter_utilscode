import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

/***
 *
 *创建人：xuqing
 * 创建时间：2020年8月1日01:53:20
 * 类说明：含有轮播图的listview 多布局
 *
 *
 */



class ListComplexLayout extends StatefulWidget {
  ListComplexLayout({Key key}) : super(key: key);

  @override
  _ListComplexLayoutState createState() {
    return _ListComplexLayoutState();
  }
}

class _ListComplexLayoutState extends State<ListComplexLayout> {

  List<Widget>_imagePages;
  List<String>_urls=[
    "https://www.itying.com/images/flutter/1.png",
    "https://www.itying.com/images/flutter/2.png",
    "https://www.itying.com/images/flutter/3.png",
  ];
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
        title: Text("含有轮播图的listview"),
      ),

      body: Container(
        child: ListView.builder(
            itemCount: 20,
            itemBuilder: ((BuildContext  context, int position){
              if(position==0){
                return itemImage(position);
              }else{
                if(position%2==0){
                 return  newitemWidget(position);
                }else{
                  return itemWidget(position);
                }
              }
            }

        )),
      ),
    );
  }

  Widget itemImage(int index){
    return GestureDetector(
      child: Container(
        width: double.infinity,
        child: AspectRatio(
          aspectRatio: 16/9,
          child: new Swiper(
            itemBuilder: (BuildContext context,  int index){
              return  new Image.network(
                _urls[index],
                fit: BoxFit.fill,
              );
            },
            itemCount: _urls.length,
            pagination: new  SwiperPagination(),
            loop: true,
            autoplay: true,
          ),
        ),
      ),

    );
  }

  Widget itemWidget(int index){
   return GestureDetector(
     child: Container(
       child: Center(
         child: Text("我是9527",style: TextStyle(
           color: Colors.red,
           fontSize: 20
         ),),
       ),
     ),
   );

  }

  Widget newitemWidget(index){
    return GestureDetector(
      child: Row(
        children: <Widget>[
          new Text("王者荣耀",style: TextStyle(
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