import 'package:flutter/material.dart';

class Dm extends StatefulWidget {
  const Dm({ Key? key }) : super(key: key);

  @override
  _DmState createState() => _DmState();
}

class _DmState extends State<Dm> {
  @override
  Widget build(BuildContext context) {
    return (
      Scaffold(

        appBar: AppBar(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          title: Text("bilal.fahiim"),
          actions: [
            IconButton(onPressed: (){}, icon: Image(image: AssetImage("assets/videocall.png"),width:30,height: 30,))
          ],),
        
        
        body: 
        SingleChildScrollView(child:
        Column(
          
          children: [
          SizedBox(height: 20,),
          searchbar(),
          chat("Ahmed", "Hey"),
          chat("Arsalan", "Hi"),
          chat("Daniyal", "Hello"),
          chat("Rameez", "Good"),
          chat("Ahmed", "Hey"),
          chat("Arsalan", "Hi"),
          chat("Daniyal", "Hello"),
          chat("Rameez", "Good"),
          chat("Ahmed", "Hey"),
          chat("Arsalan", "Hi"),
          chat("Daniyal", "Hello"),
          chat("Rameez", "Good"),
        ],))
      
    ));
  }
}

Widget searchbar(){
  return(
  Center(
    child: (
      Container(
        padding: EdgeInsets.only(left: 5),
        height: 35,width: 400,
        // alignment: Alignment.center,
           decoration:BoxDecoration(border: Border.all(width: 0.5),borderRadius: BorderRadius.circular(15),
           color: Color(0xfff7f5f5),),
        child: TextField(decoration: InputDecoration(prefixIcon:Icon(Icons.search),hintText: "search",hoverColor: Colors.black,fillColor: Colors.black))
      )
      
    ))
  );
}

Widget chat(String name, var msg){
  return(
    ListTile(
        leading: CircleAvatar(radius: 25,backgroundColor: Colors.black,backgroundImage: AssetImage("assets/p.jpg")),
        title: Text(name),
        subtitle: Text(msg),
        trailing: Icon(Icons.camera_enhance_rounded)
    )
  );
}