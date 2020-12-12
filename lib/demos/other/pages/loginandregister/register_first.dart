
import 'package:flutter/material.dart';


/**
 *
 * 创建人：xuqing
 * 创建时间：2020年10月2日19:55:42
 * 类说明：注册页面的第一个页面
 *
 *
 *
 */

class RegisterFirst extends StatefulWidget {
  RegisterFirst({Key key}) : super(key: key);

  @override
  _RegisterFirstState createState() {
    return _RegisterFirstState();
  }
}

class _RegisterFirstState extends State<RegisterFirst> {
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
        title: Text("我是P1页面"),
      ),
      body: Column(
        children: [
          Text("这是注册的第一步， 请输入手机号然后点击下一步"),
          SizedBox(height: 40,),
          RaisedButton(
              child: Text("下一步"),
              onPressed: (){
                //TODO  这是普通跳转
                //Navigator.pushNamed(context, "/registersencond");
                //如果我们想注册完成后直接返回到根路由页面 我们需要使用路由替换
                Navigator.of(context).pushReplacementNamed("/registersencond");

              }),


    RaisedButton(
     child: Text("移除路由栈"),
      onPressed: (){
    //TODO  这是普通跳转
    //Navigator.pushNamed(context, "/registersencond");
    //移除路由栈 当我们点击返回就是退出整个app这里只是做演示
     //   一般我们是在主页里面使用这个
        Navigator.of(context).pushNamedAndRemoveUntil(
            "/registersencond", ModalRoute.withName("/registersencond"));

    }),
        ],
      ),


    );;
  }







}