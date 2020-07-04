import 'package:potential_u/request_page.dart';
import 'package:flutter/material.dart';
import 'list_page.dart';

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
        //splashColor: Colors.blue,
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
Widget btn_Add(BuildContext context) {
  return IconButton(
    icon: Icon(Icons.add),
    onPressed: () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            return ListPage();
          },
        ),
      );
    },
  );
}
Widget userProfile(String imageUrl) {
  return CircleAvatar(
    radius: 30.0,
    child: ClipOval(
      child: Image.network(
        imageUrl,
        height: 45.0,
      ),
    ),
    backgroundColor: Colors.transparent,
  );
}
Widget drawer(BuildContext context) {
  return Drawer(
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
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return ListPage();
                },
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.record_voice_over),
          title: Text(
            '강의 요청',
            style: TextStyle(fontSize: 15),
          ),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return RequestPage();
                },
              ),
            );
          },
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
  );
}