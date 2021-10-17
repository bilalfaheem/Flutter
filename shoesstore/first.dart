import 'package:flutter/material.dart';
class First extends StatefulWidget {
  const First({ Key? key }) : super(key: key);

  @override
  _FirstState createState() => _FirstState();
}

var data=["bilal","ahmed","rameez"];
var img=["assets/s1.png","assets/s2.png","assets/s2.png"];


class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return (
     
     Scaffold(
        appBar:AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          leading: Image(image: AssetImage("assets/logo.png")),
          title: Text("Adidas Sports",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          actions: [Icon(Icons.search)],
        ),

      body: 
      Column(
        
        children: [top("Running"),
      
      Expanded(child: 
      ListView.builder(
        itemCount: data.length,
        itemBuilder: (context,index){
        return abc(data[index],img[index]);
      }))
        ]),

        bottomNavigationBar: BottomNavigationBar(
          items: [
          BottomNavigationBarItem(icon: Image(image: AssetImage("assets/home.png"),height: 30,width: 30,),label: "home"),
          BottomNavigationBarItem(icon: Image(image: AssetImage("assets/9.png"),height: 25,width: 25,),label: "catogery"),
          BottomNavigationBarItem(icon: Image(image: AssetImage("assets/bag.png"),height: 30,width: 30,),label: "catogery"),
          BottomNavigationBarItem(icon: Image(image: AssetImage("assets/profile.png"),height: 30,width: 30,),label: "catogery"),
          BottomNavigationBarItem(icon: Image(image: AssetImage("assets/more.png"),height: 30,width: 30,),label: "catogery")]),

      )

    );
  }
}

Widget top(String type){
  return(
    Container(
      height: 50,
      child: 
    Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(width: 10,),
        Text(type,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
               SizedBox(width: 240,),
        Text("15 results",style: TextStyle(fontSize: 12,color: Colors.grey),),
 
      ],
    )
  ));
}

Widget abc(String name,var im){
  return
Card(
  elevation: 10,
  margin: EdgeInsets.fromLTRB(32, 10, 32, 0),
   child:
      Row(
        children: [
          Image(image: AssetImage(im),height: 130,width: 130),
          Container(
            margin: EdgeInsets.only(left: 10),
          padding: EdgeInsets.only(left: 10),  
          child: 
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
          children: [
          
            Text("Men's runners",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
            SizedBox(height: 10,),
            Text("Ultra Boost",style: TextStyle(fontSize: 10),),
            Image(image: AssetImage("assets/star.jpg"),height:20),
            Text("RS 99999",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),)
          ],))
        ],
      )
    
  );
  
  
}
