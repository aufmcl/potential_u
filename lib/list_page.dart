import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'google_sign_in.dart';
import 'my_widget.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPage createState() => _ListPage();
}

class _ListPage extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Seminar'),
          backgroundColor: Colors.blueGrey,
          actions: <Widget>[
            btn_Add(context),
            userProfile(imageUrl),
          ],
        ),
        drawer: drawer(context),
        body: ListView(
          children: <Widget>[
            cardView(Icon(Icons.android), Colors.greenAccent, '안드로이드 마스터',
                '2주일 만에 앱스토어 등록'),
            cardView(Icon(Icons.code), Colors.blue, 'HTML로 나사 해킹하기',
                'HTML 수정을 통한 나사 해킹'),
            cardView(Icon(Icons.color_lens), Colors.orange, '디자인의 기초',
                '그림판으로 페이스북 UI 설계'),
            cardView(Icon(Icons.developer_board), Colors.green,
                '하태효 선생님과 함께하는 임베디드', '쉬는 시간 없이 합니다.'),
            cardView(Icon(Icons.directions_run), Colors.deepOrangeAccent,
                '4시간 동안 운동하자', '헬창들 모여ㅕ'),
          ],
        ));
  }
}