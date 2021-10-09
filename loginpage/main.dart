import 'package:flutter/material.dart';

void main() {
  runApp(const Loginpage());
}

class Loginpage extends StatelessWidget {
  const Loginpage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[300],
        appBar: AppBar(title: Center(child: Text("LOGIN PAGE")),),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
            
              Row( mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("EMAIL:"),
                  SizedBox(width: 40),
                  Container(color:Colors.white,height:30,width: 200,child: TextField(decoration: InputDecoration(labelText:" Enter Email")),),
                ],
              )
              ,SizedBox(height: 45),
              Row( mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("PASSWORD:"),
                  SizedBox(width: 20,),
                  Container(color:Colors.white,height: 30,width: 200,child: TextField(decoration: InputDecoration(labelText: " Enter Password")))
                ],
              ),
              SizedBox( height: 35),
              ElevatedButton(onPressed: (){}, child: Text("LOGIN"))
            ],
          ),
        ),
      ),
    );
      
    
  }
}