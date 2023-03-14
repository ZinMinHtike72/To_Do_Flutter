import 'package:flutter/material.dart';
import 'package:untitled1/Pages/AddPage.dart';
import 'package:untitled1/Pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,

        ),
        primarySwatch: Colors.blue,

      ),
      home: Home_Page(),


    );
  }
}


