import 'package:flutter/material.dart';

class favourite extends StatefulWidget {
  const favourite({ Key? key }) : super(key: key);

  @override
  _favouriteState createState() => _favouriteState();
}

class _favouriteState extends State<favourite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Image.asset("assets/heart.png",height: 30,width: 30,),
      ),
    );
  }
}