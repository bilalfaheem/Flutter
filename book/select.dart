import 'package:flutter/material.dart';

class Select extends StatefulWidget {
  const Select({ Key? key }) : super(key: key);

  @override
  _SelectState createState() => _SelectState();
}

class _SelectState extends State<Select> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        pic(),
        Discription()
      ],),
      
    );
  }
}

Widget pic(){
  return Card(
    color: Colors.lime,
    child: Column(children: [
      SizedBox(height: 50,),
      Row(children: [
        Icon(Icons.arrow_back),
        Expanded(child:Text(" ")),
        IconButton(onPressed: (){}, icon:Image(image: AssetImage("assets/save.png"),width: 30,height: 30,)),
        Icon(Icons.more_vert)
      ],),
      ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image(image: AssetImage("assets/shoe_dog.jpg"),width: 170,height: 250,fit: BoxFit.cover,),),
          Text("Shoe Dog",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 25,height: 2),),
          Text("Phil Knight",style: TextStyle(color: Colors.grey),),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Image(image: AssetImage("assets/stars.png"),width: 80,height: 70,),
        Text("4",style: TextStyle(fontWeight: FontWeight.w700),),
        Text("/5",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey),)
      ],)

    ],),
  );
}

Widget Discription(){
  return Card(
    child:Container(
      width: 350,
      child: 
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
       Padding(padding: EdgeInsets.only(left: 20,bottom: 12),
       child:
        Text("Description",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20,height: 2),)),
        Padding(padding: EdgeInsets.only(left: 20,bottom: 12,right: 20),
        child: 
        Text("This is the book about business. How the Nike brand started. All of these topcs are discussed in this book",style: TextStyle(color: Colors.grey,fontSize: 17  ))),
        ]))
  );
}