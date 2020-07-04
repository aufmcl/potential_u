import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'google_sign_in.dart';
import 'my_widget.dart';

class RequestPage extends StatefulWidget {
  @override
  _RequestPage createState() => _RequestPage();
}

class _RequestPage extends State<RequestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Request'),
          backgroundColor: Colors.blueGrey,
          actions: <Widget>[
            btn_Add(context),
            userProfile(imageUrl),
          ],
        ),
        drawer: drawer(context),
        body: ListView(
          children: <Widget>[
            cardView(Icon(Icons.color_lens), Colors.orange, '포토샵 어떻게 쓰나요',
                '그림판이라도 가르쳐 주세요'),
            cardView(Icon(Icons.android), Colors.greenAccent,
                '안드로이드 개발 배우고 싶어요', '자바, 코틀린, 플러터 상관 없습니다'),
            cardView(Icon(Icons.developer_board), Colors.green, '임베디드 너무 어려워요',
                'PWM 제어 가르쳐 주세요'),
          ],
        ));
  }
}