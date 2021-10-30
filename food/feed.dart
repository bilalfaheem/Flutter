

import 'package:flutter/material.dart';

class feed extends StatefulWidget {
  const feed({ Key? key }) : super(key: key);

  @override
  _feedState createState() => _feedState();
}

var foodcate=["Shrimps","Noodles","Burger","Pizza","BBQ","Shrimps","Noodles","Burger","Pizza","BBQ"];

class _feedState extends State<feed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Icon(Icons.menu,color: Colors.orange,),
        actions: [CircleAvatar(radius: 20,backgroundColor: Colors.orange,backgroundImage: AssetImage("assets/avatar.png",),)],
      ),
      body: 
      SingleChildScrollView(child: 
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text("    Karachi,PAK",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,height: 2),),
        Center(child: 
        Container(
          decoration: BoxDecoration(border:Border.all(width: 0),
         borderRadius: BorderRadius.circular(15),),
        //  color: Color(0xFFeeeeee)),
          width: MediaQuery.of(context).size.width*0.95,
          // width: 400,
          child: Theme(data:
        Theme.of(context).copyWith(
        colorScheme: ThemeData().colorScheme.copyWith(
        primary:Colors.black),),
        child:
        TextField(decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(Icons.search,color: Colors.orange,)),)))),

        
          Text("    Food Categories",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,height: 2),),

          Container(
            margin: EdgeInsets.only(left: 20),
            height: 38,
            child: Expanded(child: 
          ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: foodcate.length,
            itemBuilder: (context,index){return foodcategories(foodcate[index]);}))),

             Text("  Favorite Foods",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,height: 2),),

          Container(
            margin: EdgeInsets.only(left: 5),
            height: 230,
            child: 
          Expanded(child: 
          ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: foodcate.length,
            itemBuilder: (context,index){return food_profile();}))),


            
          Text("    Other Food",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,height: 2),),



            Container(
            margin: EdgeInsets.only(left: 16),
            height: 230,
            child: 
          Expanded(child: 
          ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: foodcate.length,
            itemBuilder: (context,index){return foodprofile2();}))),

      ],)),


      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.orange,),label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.compass_calibration_rounded,color: Colors.orange),label: "area"),
        BottomNavigationBarItem(icon: Icon(Icons.notifications,color: Colors.orange),label: "notification"),
           BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.orange),label: "refresh"),
      ]),
    );
  }
}

Widget foodcategories(var categories){
  return 
  Container(
    margin: EdgeInsets.only(right: 8),
    child: 
  ElevatedButton(
    style: TextButton.styleFrom(primary: Colors.white,backgroundColor: Colors.orange,elevation: 0,
    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
    onPressed: (){}, 
  child: Text(categories,style: TextStyle(fontWeight: FontWeight.w500),)));
}

Widget food_profile(){
  return 
  Container(
    margin: EdgeInsets.only(left: 15),
    color: Colors.white,
    height: 230,
    width: 190,
    child:
  Stack(children: [
    Positioned(
      bottom: 0,
      child: 
    Container(decoration: BoxDecoration(border: Border.all(width: 0,color: Colors.orange),
    borderRadius: BorderRadius.circular(15),color: Colors.orange),
      height: 120,width: 190,
      padding: EdgeInsets.only(top: 58,left: 15,bottom: 15,right: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
      Text("Spicy Noodles",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white,fontSize: 15),),
      Text("Sizzlers")

    ],))),
    Positioned(
      bottom: 70,
      left: 25,
      child: CircleAvatar(radius: 65,backgroundColor: Colors.white,backgroundImage: AssetImage("assets/noodles.jpg",),),),

    Positioned(
      bottom: 160,
      left: 120,
      child: CircleAvatar(radius: 20,backgroundColor: Color(0xFFf0eded),
    child: Text("6.9",style: TextStyle(fontWeight: FontWeight.w800,color: Colors.orange)),))
  ]
  ,clipBehavior:Clip.none, 
  ));
}

Widget foodprofile2_beta(){
  return Container(
    height: 200,
    width: 220,
    decoration: BoxDecoration(border: Border.all(width: 0,color: Colors.white), color: Colors.white,
    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25))),
    child: 
  Column(children: [
    ClipRRect(
      borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25)),
      child: Image(image: AssetImage("assets/pizza.jpg"),width: 220,height:120,fit: BoxFit.cover,)
    ),
    Image(image: AssetImage("assets/star.png"),width: 80,height: 30,),
    Text("Italian Pizza",style: TextStyle(fontWeight: FontWeight.w800,fontSize:15 ,)),
    Text("Pizza Hut",style: TextStyle(fontWeight: FontWeight.w400,fontSize:12 ,color: Colors.orange)),
    

  ],),);
}

Widget foodprofile2(){
  return Container(
    width: 240,height:230,
    margin: EdgeInsets.only(left: 4),
    child: 
  Stack(
    clipBehavior: Clip.none,
    children: [
    Positioned(
      bottom: 0,
      child: 
    foodprofile2_beta()),
    Positioned(
      right: 0,
      top: 15,
      child:  CircleAvatar(radius: 25,backgroundColor: Colors.orange,
    child: Text("6.9",style: TextStyle(fontWeight: FontWeight.w800,color: Colors.white)),))

  ],),);
}