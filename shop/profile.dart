import 'package:flutter/material.dart';
import 'about.dart';

class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          prof(),
          SizedBox(height: 15,),

          Text("EMAIL",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          SizedBox(height: 15,),
          Text("Bilalfahiiim@gamil.com",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 18)),
          SizedBox(height: 15,),
          Text("Phone No.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
         SizedBox(height: 15,), 
          Text("03362314013",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 18)),
          SizedBox(height: 15,),
          Text("Date Of Birth",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
         SizedBox(height: 15,), 
          Text("01-4-2000",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 18)),
          SizedBox(height: 15,), 
          Text("City",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
          SizedBox(height: 15,), 
          Text("Karachi",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 18)),
          
          
          ],),
          

          
          
    
      
    );
  }
}

Widget prof(){
  return(Container(
    color: Colors.grey[300],
    child: 
  Center(
    child: Column(children: [
      SizedBox(height: 50,),
      Image.asset("assets/profile.png",width: 200,height: 200,),
      SizedBox(height: 50,),
      Text("BILAL FAHEEM",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      SizedBox(height: 50,),

    ],),
  )));
}