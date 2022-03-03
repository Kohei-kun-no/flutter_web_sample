import 'package:flutter/material.dart';
import 'package:flutter_web_sample/first_sample/changing.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web Training',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: DefaultTextStyle.merge(
          style: TextStyle(
              height: 1.5
          ),
          child: MyHomePage()
      ),
    );
  }
}