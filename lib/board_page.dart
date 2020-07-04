import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'google_sign_in.dart';
import 'my_widget.dart';

class BoardPage extends StatefulWidget {
  @override
  _BoardPage createState() => _BoardPage();
}

class _BoardPage extends State<BoardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Board'),
          backgroundColor: Colors.blueGrey,
          actions: <Widget>[
            btn_Add(context),
            userProfile(imageUrl),
          ],
        ),
        drawer: drawer(context),
        body: ListView(
          children: <Widget>[
            cardView(Icon(Icons.color_lens), Colors.orange, '여기엔 어떤 내용을 써야하죠',
                '흐으음'),
          ],
        ));
  }
}
