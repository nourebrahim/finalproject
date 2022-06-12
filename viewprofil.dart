import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'card.dart';
import 'cardprofil.dart';
import 'main.dart';

class Accountview extends StatefulWidget {
  @override
  State<Accountview> createState() => _View_AllState();
}

class _View_AllState extends State<Accountview> {
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
                            "My account",
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
      body: FutureBuilder(
        future: mydb.query('phonebook'),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData == false) {
            return Text("no data");
          } else {
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color:Colors.blue[800] ,

                        width:150 ,
                        height:80 ,
                        child: MyCardprofil(snapshot.data[index]["name"],
                            snapshot.data[index]["phone"])),
                  );
                });
          }
        },
      ),
    );
  }
}
