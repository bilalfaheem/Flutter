import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping/home.dart';
import 'package:shopping/screencaller.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

var password="";

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black,
        title: Text("Login",style: TextStyle(color: Colors.white),),
      ),

      // body: Column(
      //   children: [
      //     Image.asset("assets/splash.gif"),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              
              
              children: [
                
                logo(),
        
                SizedBox(height: 30,),
        
                Container(
                padding: EdgeInsets.only(left: 15),
                height: 50,width:400,
                decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 0.5),borderRadius: BorderRadius.circular(5.0),
                color: Color(0xfff7f5f5)),
                child: 
                TextField(decoration: InputDecoration(hintText: "Phone number, email or username"))),
        
                SizedBox(height: 30,),
        
                Container(
                padding: EdgeInsets.only(left: 15),
                height: 50,width:400,
                decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 0.5),borderRadius: BorderRadius.circular(5.0),
                color: Color(0xfff7f5f5)),
                child: 
                TextFormField(
                  onChanged: (value){
                    password=value;
                  },
                  decoration: InputDecoration(hintText: "Password"))),
        
                SizedBox(height: 30,),
        
                Container(
                  height: 50,width: 400,
                  alignment: Alignment.center,
                  
                  decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 0.5),borderRadius: BorderRadius.circular(5.0),
                  color: Color(0xff0290ed),),
                  child: 
                  TextButton(
                    onPressed: (){
                      if(password=="123456"){
                        Get.to(caller());
                      }
                      else{
                        Get.snackbar(
                          "Try Again", "Wrong Password",
                          backgroundColor: Colors.white);
                      }
                      
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>caller()));
                  } ,
                  child: Text("Log In"),
                  style: TextButton.styleFrom(primary: Colors.white))
                )
        
              ],
            ),
        ),
      )
      
    );
  }
}

Widget logo(){
  return(
    Container(
      alignment: Alignment.center,
      height: 280,
      child: Image(image: AssetImage("assets/splash.gif")),
    )

  );
}

