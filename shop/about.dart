import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({ Key? key }) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:     Column(
      children: [
        top(),
  SizedBox(height: 30,),
  Icon(Icons.add_location_alt_outlined,color: Colors.black,size: 40,),
  SizedBox(height: 30,),
  Text("Gulberg,Block#17,Karachi",style: TextStyle(fontSize: 20),),
  SizedBox(height: 30,),

  Icon(Icons.phone,color: Colors.black,size: 40,),
  SizedBox(height: 30,),
  Text("0900-78601",style: TextStyle(fontSize: 20),),
  SizedBox(height: 30,),
  Icon(Icons.access_time_outlined,color: Colors.black,size: 40,),
  SizedBox(height: 30,),
  Text("Monday-Friday",style: TextStyle(fontSize: 20),)
      ],
      
    )
    );
    
 
  }
}

Widget top(){
  return(Container(
    color: Colors.grey[300],
    child: 
  Center(
    child: Column(children: [
      SizedBox(height: 50,),
      Image.asset("assets/about.png",width: 200,height: 200,),
      SizedBox(height: 50,),
      Text("Drop Line About Us",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      SizedBox(height: 50,),

    ],),
  )));
}