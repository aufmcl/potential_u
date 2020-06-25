import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'google_sign_in.dart';
import 'login_page.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Seminar'),
          backgroundColor: Colors.blueGrey,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                _Add();
              },
            ),
            CircleAvatar(
              radius: 30.0,
              child: ClipOval(
                child: Image.network(
                  imageUrl,
                  height: 45.0,
                ),
              ),
              backgroundColor: Colors.transparent,
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Text(''),
                decoration: BoxDecoration(color: Colors.blueGrey),
              ),
              ListTile(
                leading: Icon(Icons.format_list_bulleted),
                title: Text(
                  '강의 목록',
                  style: TextStyle(fontSize: 15),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.record_voice_over),
                title: Text(
                  '강의 요청',
                  style: TextStyle(fontSize: 15),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.dvr),
                title: Text(
                  '게시판',
                  style: TextStyle(fontSize: 15),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: ListView(
          children: <Widget>[
            cardView(Icon(Icons.android), Colors.greenAccent, '안드로이드 마스터', '2주일 만에 앱스터오 등록'),
            cardView(Icon(Icons.code), Colors.blue, 'HTML로 나사 해킹하기', 'HTML 수정을 통한 나사 해킹'),
            cardView(Icon(Icons.color_lens), Colors.orange, '디자인의 기초', '그림판으로 페이스북 UI 설계'),
            cardView(Icon(Icons.developer_board), Colors.green, '하태효 선생님과 함꼐하는 임베디드', '쉬는 시간 없이 합니다.'),
            cardView(Icon(Icons.directions_run), Colors.deepOrangeAccent, '4시간 동안 운동하자', '헬창들 모여ㅕ'),
          ],
        ));
  }

  // ignore: non_constant_identifier_names
  void _AFD() async {}

  // ignore: non_constant_identifier_names
  void _Add() {
    print('hi');
  }

  Widget cardView(Icon icon, Color color, String title, String subtitle) {
    return Card(
      margin: EdgeInsets.all(10.0),
      elevation: 5.0,
      shape: new RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ListTile(
        leading: Icon(
          icon.icon,
          color: color,
          size: 50,
        ),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: IconButton(
          icon: Icon(Icons.more_vert),
          onPressed: () {
            print('more');
          },
        ),
        onTap: () {
          print('list');
        },
        isThreeLine: true,
      ),
    );
  }
}
