import 'package:flutter/material.dart';
import 'package:flutter_application_4/first.dart';
import 'package:flutter_application_4/second.dart';
import 'package:flutter_application_4/third.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: third(),
      
    );
  }
}