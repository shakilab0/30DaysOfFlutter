import 'package:flutter/material.dart';
import 'package:m_app1/pages/home_page.dart';
import 'package:m_app1/pages/login_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.light,
      ),
      theme: ThemeData(primarySwatch: Colors.deepOrange),

      initialRoute: "/home",

      routes: {
        "/": (context)=>LoginPage(),
        "/home": (context)=>HomePage(),
        "/login": (context)=>LoginPage(),
      },

    );
  }
}