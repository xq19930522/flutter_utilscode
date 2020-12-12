import 'package:flutter/material.dart';


/**
 *
 * 创建人：xuqing
 * 创建时间：2020年10月2日19:55:42
 * 类说明：注册页面的第二个页面
 *
 *
 *
 */



class RegisterSencond extends StatefulWidget {
  RegisterSencond({Key key}) : super(key: key);

  @override
  _RegisterSencondState createState() {
    return _RegisterSencondState();
  }
}

class _RegisterSencondState extends State<RegisterSencond> {
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
        title: Text("我是P2页面"),
      ),
      body: Column(
        children: [
          Text("注册完成请点击返回"),
          SizedBox(height: 40,),
          RaisedButton(
              child: Text("注册完成"),
              onPressed: (){
                Navigator.of(context).pop();

              }),
          RaisedButton(
              child: Text("去P3"),
              onPressed: (){

                Navigator.of(context).pushReplacementNamed("/registep3");
              })
        ],
      ),
    );
  }
}

