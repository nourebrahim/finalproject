import 'package:flutter/material.dart';

import 'main.dart';

class Edit extends StatefulWidget {


  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
  TextEditingController n1=new TextEditingController();
  TextEditingController n2=new TextEditingController();
  TextEditingController n3=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue[800],
          title: const Text("MIDIC",
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
          centerTitle: true,
          foregroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: Size(50, 50),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 340,
                    height: 50,
                    child: Padding(
                        padding: const EdgeInsets.only(top: 18),
                        child: Text(
                          "Edit",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                  ),
                ),
              ],
            ),
          )),
      body: Column(children: [
        TextField(controller: n1,decoration: InputDecoration(
            labelText: 'old name' ,border: OutlineInputBorder()
        ),),
        SizedBox(height: 5,),

        TextField(controller: n2,decoration: InputDecoration(
            labelText: 'New Name' ,border: OutlineInputBorder()
        ),),
        SizedBox(height: 5,),

        TextField(controller: n3,decoration: InputDecoration(
            labelText: 'New Phone' ,border: OutlineInputBorder()
        ),),
        FlatButton(onPressed: () async {
          String a=n1.text.toString();
          String b=n2.text.toString();
          String c=n3.text.toString();
          await mydb.update("phonebook",<String,dynamic>{"name":b,"phone":c},where:"name=?",whereArgs:[a]);

        }, child: Text('save'))
      ],),
    );
  }
}