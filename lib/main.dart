import 'package:flutter/material.dart';
import 'package:naufal_uas/HomePage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: true,
        home: HomePage()
    );
  }
}