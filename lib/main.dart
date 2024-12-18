import 'package:books_realism_app/screen/dashboard_screen.dart';
import 'package:books_realism_app/screen/intro_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
        debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Colors.white,
      ),
      home : IntroScreen(),
      routes: {

      },
    );
  }
}
