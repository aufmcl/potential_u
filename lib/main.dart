import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Login',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: LoginPage(),
  ));
}