import 'package:flutter/material.dart';
import 'home.dart';

class Cart extends StatefulWidget {
  const Cart({ Key? key }) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Image.asset("assets/cart.png",height: 30,width: 30,),
      ),
      body: 
         Container(
           margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
          width: 400,
          child: ListView.builder(
            itemCount: cartitem.length,
            shrinkWrap: true,
            itemBuilder: (context,index){
              return

                Card(
                  
                  child: Column(
                    children: [
                        Container(
                        height: 20,
                        width: 60,
                        child:Center(child: Text("${cartitemoff[index]}% Off")),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(5)
                        ),),
                        //image
                        Image.asset(cartitem[index],height: 150),
                
                        //row
                        Row(
                          children: [
                            //item name
                            Text(
                              cartitemname[index],
                            style: 
                              TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                              ),
                              //sized box
                              Expanded(
                                child: 
                                SizedBox(
                                  width: 2,
                                )
                              ),
                              //item price
                              Text(
                                "${cartitemprice[index]} \$",
                                style: 
                                TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                                ),
                              )],
                              ),
                            //Row2
                            Row(
                              children: [
                                //Check out Button
                                Container(
                                  width: 90,
                                  height: 40,
                                  decoration: 
                                  BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.orange,
                                    
                                  ),
                                  
                                  child: 
                                  TextButton(
                                    onPressed: (){},
                                   child: 
                                   Text("Check Out",),
                                   ),
                                ),
                                Expanded(
                                  child: 
                                  SizedBox(
                                    width: 2,
                                  )),
                                //Delete Button
                                IconButton(onPressed: (){
                                  cartitemcount--;
                                  cartitem.remove(cartitem[index]);
                                  cartitemname.remove(cartitemname[index]);
                                  cartitemprice.remove(cartitemprice[index]);
                                  cartitemoff.remove(cartitemoff);
                                }, 
                                icon: Icon(Icons.delete),
                                iconSize: 28,)
                              ],
                            )
                
                
                
                  ],),
                
                
              );
            }),
        ),
      
    );
  }
}