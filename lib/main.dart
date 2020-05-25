import 'package:flutter/material.dart';
import 'package:flutter_designs/src/basico_page.dart';
import 'package:flutter_designs/src/buttons_page.dart';
import 'package:flutter_designs/src/home_page.dart';
import 'package:flutter_designs/src/scroll_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => HomePage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/basic': (context) => BasicPage(),
        '/scroll': (context) => MyScrollPage(),
        '/buttons': (context) => ButtonsPage(),
      },
    );
  }
}
