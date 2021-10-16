import 'package:flutter/material.dart';
import 'searchpage.dart';
import 'addpage.dart';
import 'likepage.dart';
import 'profile.dart';
import 'feedpage.dart';


class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  final screens=[
      Feed(),
      Search(),
      Add(),
      Likes(),
      Profile(),
  ];

  @override
  Widget build(BuildContext context) =>Scaffold(



       
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
                  BottomNavigationBarItem(icon: Image(image: AssetImage("assets/add.png"),width: 30,height: 30,),label: "add"),
                  BottomNavigationBarItem(icon: Image(image: AssetImage("assets/heart.png"),width: 30,height: 30,),label: "likes"),
                  BottomNavigationBarItem(icon: Image(image: AssetImage("assets/ava.png"),width: 30,height: 30,),label: "profile")
      ]
      )
    );

  }
