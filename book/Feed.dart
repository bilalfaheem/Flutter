import 'package:flutter/material.dart';

class Feed extends StatefulWidget {
  const Feed({ Key? key }) : super(key: key);

  @override
  _FeedState createState() => _FeedState();
}

var data=[1,2,3,4,4,5];

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Colors.white,

      body:

      SingleChildScrollView(child: 
       Column(
         
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        
        SizedBox(height: 60,),

        Theme(data:
        Theme.of(context).copyWith(
        colorScheme: ThemeData().colorScheme.copyWith(
        primary:Colors.black),),
        child:TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Icon(Icons.menu_rounded),
          suffixIcon: Icon(Icons.search)
        ),)),

        SizedBox(height: 45,),
        Container(
          margin: EdgeInsets.only(left: 20),
        child: Text("Popular Now",style: TextStyle(fontSize: 35,fontWeight: FontWeight.w700),)),
        SizedBox(height: 30,),

        Container(
          margin: EdgeInsets.only(left: 20),
          height: 345,
        child: 
        Expanded(child: 
        ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: data.length,
          itemBuilder: (index,context){
          return books();
        }))),

        SizedBox(height: 45,),
        Container(
          margin: EdgeInsets.only(left: 20),
        child: Text("Bestseller",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),)),
        SizedBox(height: 30,),


        Container(
        margin: EdgeInsets.only(left: 20),
        height: 345,
        child: 
        Expanded(child: 
        ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: data.length,
          itemBuilder: (index,context){
          return books();
        }))),



      ],))
    
      
    ));
  }
}

Widget books(){
  return( Card(
  
    elevation: 0,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image(image: AssetImage("assets/shoe_dog.jpg"),width: 200,height: 280,fit: BoxFit.cover,),),


        Padding(padding: EdgeInsets.only(left: 10),child:
        Text("SHOE DOG",style:TextStyle(fontWeight: FontWeight.w500,fontSize: 20,height: 2,color: Colors.grey) ,),),
        Padding(padding: EdgeInsets.only(left: 10,bottom: 5),child: 
        Text("Phil Knight",style: TextStyle(fontSize: 10,color:Colors.grey,)))
    ],),
  ));
}
