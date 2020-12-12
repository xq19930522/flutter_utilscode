import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:io';
import 'dart:convert';






class HttpTest1Page extends StatefulWidget {
  @override
  _HttpTest1PageState createState() => _HttpTest1PageState();
}

class _HttpTest1PageState extends State<HttpTest1Page> {

  String  textstr="测试";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
          title:Text("HttpTest1",style:TextStyle (color: Colors.white))
      ),
      body: Container(
        child: SingleChildScrollView(
          child:Column(
            children: [
              RaisedButton(
                textColor: Colors.black,
                child: Text("post 请求实例"),
                color: Colors.blue,
                onPressed: ()async{
                /*  setState(() {
                    textstr="";
                  });*/
                  postRequest().then((value) {
                    setState(() {
                      textstr=value;
                    });
                  });
                },
              ),

              Container(
                child:  RichText(
                    text: TextSpan(
                        text: textstr,
                        style: TextStyle(fontSize: 16.0,
                            color: Colors.black)),
                    textDirection: TextDirection.rtl),
              )
            ],
          ),
        )
      ),
    );
  }

}

Future postRequest() async {

  var url = "https://www.fastmock.site/mock/1010b262a743f0b06c565c7a31ee9739/root/getSimpleArrDic";
  var dio = new Dio();
  var response = await dio.post(url, data:{"id":12,"name":"wendu"});
  var result = response.data.toString();
  print("返回数据： "+result);
  print(response.data["msg"]);
  return result;

}

Future postRequest2()async{
  var url = "https://www.fastmock.site/mock/1010b262a743f0b06c565c7a31ee9739/root/getSimpleArrDic";
  var response = await Dio().post(url);
  print("返回数据： "+response.data.toString());
  print(response.data["msg"]);
  var result = response.data.toString();
  return result;
}

Future postRequest3()async{
  print("response----");
//      var url = "https://itunes.apple.com/lookup?id=id414478124";
  var url = "https://itunes.apple.com/cn/lookup?id=414478124";
  Options options = Options(headers: {HttpHeaders.acceptHeader:"Content-Type:application/x-www-form-urlencoded"});
  var response = await Dio().post(
      url,
      options: options);
  print("results---");
  Map<String, dynamic> data = json.decode(response.data.trim());
  print('results##### ${data['results']}');

  print('version#####, ${data['results'][0]['version']}');
  return data['results'][0]['version'];





}