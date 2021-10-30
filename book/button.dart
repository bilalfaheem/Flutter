import 'package:book_seller/Feed.dart';
import 'package:book_seller/select.dart';
import 'package:flutter/material.dart';
import 'Feed.dart';
import 'select.dart';

class button extends StatefulWidget {
  const button({ Key? key }) : super(key: key);

  @override
  _buttonState createState() => _buttonState();
}

class _buttonState extends State<button> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>Feed()));},
           child: Text("Feed")),
           ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Select()));}, child: Text("select"))
        ],
      ),
      
    );
  }
}