import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({ Key? key }) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(height: 50,),
        searchbar()
      ],)
      
    );
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
