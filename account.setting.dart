import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

import 'main.dart';

class Add_account extends StatefulWidget {
  @override
  State<Add_account> createState() => _Add_account();
}

class _Add_account extends State<Add_account> {
  TextEditingController Name = new TextEditingController();
  TextEditingController Phone = new TextEditingController();
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
                          "Create a New account",
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: Name,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              controller: Phone,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  labelText: 'Phone', border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 5,
            ),
            FlatButton(
                onPressed: () async {
                  String a = Name.text.toString();
                  String b = Phone.text.toString();
                  await mydb.insert(
                      "phonebook",
                      <String, dynamic>{
                        "name": a,
                        "phone": b,
                      },
                      conflictAlgorithm: ConflictAlgorithm.replace);
                },
                child: Text('Save'))
          ],
        ),
      ),
    );
  }
}
