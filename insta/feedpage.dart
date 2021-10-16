import 'package:flutter/material.dart';
import 'package:insta/dmpage.dart';

class Feed extends StatefulWidget {
  const Feed({ Key? key }) : super(key: key);

  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return (
      Scaffold(
        
        appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title:  Image(image: AssetImage("assets/logo.png"),width: 120,),
       actions: [
         Container(child: 
         IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Dm()));}, 
         icon: Image(image: AssetImage("assets/dm.png"),width: 25,height: 25,)))
       ],
      ),
        
        body:
        SingleChildScrollView(
          child: 
        
        Column(
          
          children: [

            SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child:Row(
            children: [
              stories("Bilal"),stories("Ali"),stories("moiz"),stories("Bilal"),stories("Ali"),stories("moiz"),
              stories("ahmed"),stories("ali")],
          )),

          const Divider(height: 0,thickness:1),

            post("Bilal", "Karachi"),
            post("Ahmed", "Islamabad")
          ],
        ))
    )
    );
  }
}

Widget post(String name, var loc){
  return(
    Card(
      child: Column(children: [

      ListTile(
        leading: CircleAvatar(radius:15,backgroundColor: Colors.black),
        title: Text(name),
        subtitle: Text(loc),
        trailing: Icon(Icons.more_vert,color: Colors.black,),
        dense: true,
        contentPadding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 16.0),
      ),

      Divider(thickness: 1,),

      Container(
        child: Image(
          image: AssetImage("assets/p.jpg"),
          height: 400,
          fit: BoxFit.cover,),
      ),
      
      Row(children: [
        IconButton(onPressed: (){}, icon: Image(image: AssetImage("assets/heart.png"),width: 30,height: 30,) ),
        IconButton(onPressed: (){}, icon: Image(image: AssetImage("assets/comment.png"),width: 30,height: 30,) ),
        IconButton(onPressed: (){}, icon: Image(image: AssetImage("assets/send.png"),width: 30,height: 30,) ),
        SizedBox(width: 232,),
        IconButton(onPressed: (){}, icon: Image(image: AssetImage("assets/save.png"),width: 30,height: 30,) ),
      ],)


      ]
      ) 
    )
  );
}

Widget stories(String name){
  return Padding(
    padding: const EdgeInsets.fromLTRB(3, 6, 3, 6),
    child: (
      Column(
         
        children: [
          const CircleAvatar(radius: 32,backgroundColor: Colors.black87,backgroundImage: AssetImage('assets/cc.png')),Text(name)
        ],
      )
      ),
  );
}