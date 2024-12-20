import 'package:books_realism_app/screen/intro_screen.dart';
import 'package:books_realism_app/screen/book_details_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: IntroScreen(),
      routes: {
        '/book-details': (context) => BookDetailsScreen(),
      },
    );
  }
}
