import 'package:flutter/material.dart';
import 'city_pickers.dart';


/**
 *
 * 创建人：xuqing
 * 创建时间：2020年12月12日14:45:31
 * ；类说明：地址选择器
 *
 *
 */

class SiteSelectPage extends StatefulWidget {
  SiteSelectPage({Key key}) : super(key: key);

  @override
  _SiteSelectPageState createState() {
    return _SiteSelectPageState();
  }
}

class _SiteSelectPageState extends State<SiteSelectPage> {
  String  getSite="";
  TextStyle  _textStyle=new TextStyle(
      fontSize: 25,
      color: Colors.yellow
  );
  TextStyle  _confirmStyle=new TextStyle(
      fontSize: 25,
      color: Colors.red
  );
  TextStyle  _cancelStyle=new TextStyle(
      fontSize: 25,
      color: Colors.green
  );
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
    return  Scaffold(
      appBar: AppBar(
        title: Text("地址选择器"),
      ),
      body:  Column(
        children: <Widget>[
          RaisedButton(
            child: Text("地址选择器"),
            onPressed: (){
              _clickEventFunc();
            },
          ),
          SizedBox(height: 20,),
          new Text("${"地址 : "+getSite}",
            style: _textStyle,)
        ],

      ),
    );
  }
  Result resultArr = new Result();
  void _clickEventFunc() async{
    Result tempResult = await CityPickers.showCityPicker(
        context: context,
        theme: Theme.of(context).copyWith(primaryColor: Color(0xfffe1314)), // 设置主题
        locationCode: resultArr != null ? resultArr.areaId ?? resultArr.cityId ?? resultArr.provinceId : null, // 初始化地址信息
        cancelWidget: Text(
          '取消',
          style: _cancelStyle,
          // style: TextStyle(fontSize: ScreenUtil().setSp(26),color: Color(0xff999999)),
        ),
        confirmWidget: Text(
          '确定',
          style: _confirmStyle,
          // style: TextStyle(fontSize: ScreenUtil().setSp(26),color: Color(0xfffe1314)),
        ),
        height: 220.0
    );
    if(tempResult != null){
      setState(() {
        resultArr = tempResult;
        getSite=resultArr.provinceName+resultArr.cityName+resultArr.areaName+"大水怪";
        print(resultArr);


      });
    }
  }


}











