

import 'package:flutter/material.dart';
import 'package:shopping/home.dart';
import 'package:shopping/profile.dart';
import 'package:shopping/search.dart';

class caller extends StatefulWidget {
  const caller({ Key? key }) : super(key: key);

  @override
  _callerState createState() => _callerState();
}

class _callerState extends State<caller> {
    int currentIndex = 0;
  final screens=[
      Home(),
      Search(),
      Profile(),
  ];
  @override
  Widget build(BuildContext context)  =>Scaffold(



       
      body: screens[currentIndex],


      bottomNavigationBar: 
      BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index ),
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.amber,
        items: [
                  BottomNavigationBarItem(icon: Image(image: AssetImage("assets/home.png"),width: 30,height: 30,),label: "home"),
                  BottomNavigationBarItem(icon: Image(image: AssetImage("assets/search.png"),width: 30,height: 30,),label: "search"),
                  BottomNavigationBarItem(icon: Image(image: AssetImage("assets/profile.png"),width: 30,height: 30,),label: "profile")
      ]
      )
    );

  }