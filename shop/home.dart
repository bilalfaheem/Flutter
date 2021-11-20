
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping/about.dart';
import 'package:shopping/cart.dart';
import 'package:shopping/favourite.dart';

List pic = ["assets/s2.png","assets/T.png","assets/shoes.png"];
List namee = ["Shoes", "Suit", "Jeans"];
List quantity = ["10 pieces left", "4 pieces left", "20 pieces left"];

var draw=["Cart","Favourite","About"];
var drawimg=["assets/cart.png","assets/heart.png","assets/about.png"];


class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}
var cartitemcount= 0.obs;
var cartitem=[];
var cartitemname=[];
var cartitemprice=[];
var cartitemoff=[];



class _HomeState extends State<Home> {

List products = ["assets/s2.png","assets/T.png","assets/shoes.png"];
List productsname=["Adidas Shoes","Black T-Shirt","Adidas Colorful Shoes"];
List productsprice=["50","10","80"];
List productsoff=["10","8","25"];


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.white,
        foregroundColor: Colors.black,
        title: Text("Home Page"),
        actions: [
          IconButton(onPressed: (){},
           icon: Image.asset("assets/heart.png")),
          IconButton(onPressed: (){
            Get.to(Cart());
          },
           icon: cartadd())
        ],

      

      ),

      drawer: Drawer(
        
        child: Column(
          children: [
            DrawerHeader(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/profile.png"),
                    radius: 30,
                    backgroundColor: Colors.black,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("BILAL FAHEEM")
                ])),

      ListTile(
      leading: Image.asset("assets/cart.png",height: 30,width: 30,),
      title: Text("Cart"),
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
      },
    ),

      ListTile(
      leading: Image.asset("assets/heart.png",height: 30,width: 30,),
      title: Text("Favourite"),
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>favourite()));
      },
    ),
      ListTile(
      leading: Image.asset("assets/about.png",height: 30,width: 30,),
      title: Text("About"),
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>About()));
      },
    ),
  ],),)
,      




      body: SingleChildScrollView(
        child: Column(
          children: [
      
      
          Container(
            height:90,
            child: Expanded(child: 
            ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: pic.length,
              itemBuilder: (context, index) {
                return cat(pic[index], namee[index], quantity[index]);
              },
            )),
          ),
      
            // item("assets/T.png"),
      

              ListView.builder(
                 physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: pic.length,
                itemBuilder: (context,index){
                return item(products[index],productsname[index],productsprice[index],productsoff[index]);
              }),
              
            
      
      
        ],),
      ),
      
    );
  }
}




Widget item(var img,var name,var price,var off){
  return 
  Container(
     height: 330,
     width: 380,
    child: Card(
      child: 
           Column(
            children: [
              Row(children: [
                IconButton(
              icon: Image.asset('assets/heart.png',height: 30,width: 30,),
               onPressed: () {},
                ),
                Expanded(child:  SizedBox(width: 20,)),
                Container(
                  height: 20,
                  width: 60,
                  child:Center(child: Text("$off% Off")),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(5)), ),
              ],),
  
              Container(
                height: 150,
                child: Image(image: AssetImage(img),fit: BoxFit.cover,)),
  
                Row(children: [
                  Text(name,
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  Expanded(child: 
                  SizedBox(width: 20,)),
                  Text("$price \$",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                ],),
                Row(children: [
                  Expanded(child: SizedBox(width: 20,)),
                  IconButton(onPressed: (){
                    cartitemcount++;
                    cartitem.add(img);
                    cartitemname.add(name);
                    cartitemprice.add(price);
                    cartitemoff.add(off);

                  }, 
                  icon:Image.asset("assets/cart.png") )
                ],)
                
  
            ],
          )
        )
      
  );
}

Widget cat(var image, var data, var quan) {
  return (Column(
    children: [
      Row(
        children: [
          Container(
            child: Card(
              child: Row(
                children: [
                  Image(
                    image: AssetImage(image),
                    height: 80,
                  ),
                  Column(
                    children: [
                      Text(data,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      Text(
                        quan,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      )
    ],
  ));
}


Widget categories(String name,var im){
  return
Container(
  height: 100,
  width: 200,
  child:   Card(
  
    elevation: 10,
  
    margin: EdgeInsets.only(left: 5,top: 5,bottom: 5),
  
     child:
  
        Row(
  
          children: [
  
            Image(image: AssetImage(im),height: 100,width: 100),
  

  
            Column(
  
              mainAxisAlignment: MainAxisAlignment.start,
  
            children: [
  
            
  
              Text(name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
  
              SizedBox(height: 15,),
  
              Text("peice left",style: TextStyle(fontSize: 16),),
  
            ],)
  
          ],
  
        )
  
      
  
    ),
);
  
  
}

Widget cartadd(){
  return Stack(
    clipBehavior: Clip.none,
    children: [
      Image.asset("assets/cart.png",width: 30,height: 30,),
      Positioned(
        top: -5,
        right: -5,
        child: CircleAvatar(
        radius: 10,
        backgroundColor: Colors.orange,
        child: 
        Obx(()=>Text("$cartitemcount"),)
        
      ))
    ],
  );
}