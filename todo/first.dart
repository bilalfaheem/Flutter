import 'package:flutter/material.dart';


void main() {
  runApp(home());
}

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  TextEditingController txts = TextEditingController();

  var gettext = "";
  var edit= "";
  var lst = [];

  add() {
    setState(() {
      lst.add(gettext);
      // lst1.add(gettext1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: Icon(Icons.menu),
        title:  Text(
            "TODO LIST",style: TextStyle(
              fontWeight: FontWeight.bold),),
            
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "Tasks",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 300,
                child: TextField(
                    controller: txts,
                    onChanged: (value) {
                    gettext = value;},
                  decoration: InputDecoration(
                    hintText: "Add Task",
                    suffixIcon: IconButton(
                      onPressed: (){
                        add();
                          txts.clear();},
                       icon: Icon(Icons.add))),
      
                ),
              ),
      
              SizedBox(
                height: 25,
              ),
      
      
      
              ListView.builder(
                shrinkWrap: true,
                itemCount: lst.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    tileColor: Colors.lightGreen,
                    
                    leading: Text(lst[index]),
                    trailing: 
                    Wrap(
                      children: [
                        IconButton(onPressed: (){
                          setState(() {
                            
                          
                          showDialog(context: context,
                           builder: (BuildContext context){
                             return AlertDialog(
                               title: Text("Edit"),
                               actions: [
                                 TextFormField(
                                   initialValue: lst[index],
                                   onChanged: (value){
                                     edit=value;
                                   },
                                 ),
                                 TextButton(onPressed: (){
                                   setState(() {
                                     lst[index]=edit;
                                     Navigator.of(context).pop();
                                   });
                                 }, child: Text("Edit"))
                               ],
                             );
                           });
                           });
                        }, icon: Icon(Icons.edit)),
      
      
      
                        IconButton(onPressed: (){
                          setState(() {
                            lst.remove(lst[index]);
                          });
                        }, icon: Icon(Icons.delete)),
      
      
                      ],)
                    
                  
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}