import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget imageSection = new Image.asset(
      'assets/images/home/boy.jpg',
      height: 240.0,
      fit: BoxFit.cover,
    );

    Widget titleSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: [
          new Expanded(child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              new Container(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: new Text(
                  '战战',
                  style: new TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              new Text(
                '小飞侠的男神',
                style: new TextStyle(
                  color: Colors.grey[500]
                ),
              )
            ],
          )),
          new Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          new Text('41')
        ],
      ),
    );

    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;

      return new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new Icon(icon, color: color),
          new Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: new Text(
              label,
              style: new TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color
              ),
            ),
          )
        ],
      );
    }

    Widget buttonSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButtonColumn(Icons.call, 'CALL'),
          buildButtonColumn(Icons.near_me, 'ROUTR'),
          buildButtonColumn(Icons.share, 'SHARE'),
        ],
      ),
    );

    Widget textSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Text(
        '''
        肖战，1991年10月5日出生于重庆市，中国内地男演员、歌手。2015年，以选手的身份参加浙江卫视才艺养成选秀节目《燃烧吧少年》。2016年4月，主演校园星座超能力网络剧《超星星学园》。2018年4月25日，古装奇幻网络剧《哦！我的皇帝陛下》在腾讯视频播出，肖战凭北堂墨染一角崭露头角。2019年6月27日，古装仙侠剧《陈情令》在腾讯视频播出，肖战凭魏无羡一角赢得广泛关注；
        ''',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('战战的主页'),
        ),
        body: new ListView(
          children: [
            imageSection,
            titleSection,
            buttonSection,
            textSection
          ],
        ),
      ),
    );
  }
}

