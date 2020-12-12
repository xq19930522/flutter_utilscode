import 'package:flutter/material.dart';
 import 'pages/pass_value_home.dart';


class PassValuePage extends StatefulWidget {
  PassValuePage({Key key}) : super(key: key);

  @override
  _PassValuePageState createState() {
    return _PassValuePageState();
  }
}

class _PassValuePageState extends State<PassValuePage> {
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
    return PassValueHome();
  }
}










/*
class PassValuePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("传值"),
          elevation: 0.0,
        ),
        body: RaisedButton(
          child: Text("带参数跳转"),
          onPressed: () {
            var title = 'title222';
            Navigator.pushNamed(context, 'PassValuePage2',
                arguments: {'title': title});

//            Navigator.pushNamed(context, "PassValuePage2",arguments:"123").then((value){
//              print("回传的值===="+value.toString());
//            });

//            NavigatorFluroUtils.pushResult(context, '${"PassValuePage2"}?passvalue=123&isScan=true', (value){
//              print("回传的值===="+value.toString());
//            });

//            NavigatorUtils.pushNamed(context, '${"PassValuePage2"}?passvalue=123&isScan=true');

            //跳转传递model可看two_page跳转个人信息

        *//*    NavigatorUtils.pushNamedResult(
                context, '${"PassValuePage2"}?passvalue=123&isScan=true',
                (value) {
              print("回传的值====" + value.toString());
              JhToast.showText(context, msg: "返回的参数: $value");
            });*//*
          },
        ));
  }
}*/
