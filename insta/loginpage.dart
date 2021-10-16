import 'package:flutter/material.dart';
import 'home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return(
      Scaffold(
        backgroundColor: Colors.white,
        body: Column(
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
            TextField(decoration: InputDecoration(hintText: "Password"))),

            SizedBox(height: 30,),

            Container(
              height: 50,width: 400,
              alignment: Alignment.center,
              
              decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 0.5),borderRadius: BorderRadius.circular(5.0),
              color: Color(0xff0290ed),),
              child: 
              TextButton(
                onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
              } ,
              child: Text("Log In"),
              style: TextButton.styleFrom(primary: Colors.white))
            )

          ],
        )
      )
    );
  }
}

Widget logo(){
  return(
    Container(
      alignment: Alignment.center,
      height: 80,
      child: Image(image: AssetImage("assets/logo.png")),
    )

  );
}
