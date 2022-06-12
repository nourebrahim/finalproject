import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';

class scan extends StatefulWidget {
  @override
  State<scan> createState() => _LoginState();
}

class _LoginState extends State<scan> {
  dynamic data;
  TextEditingController n1 = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blue,
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
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Search",
                            contentPadding: const EdgeInsets.all(5.0),
                            prefixIcon: CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.search,
                                size: 30,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
        body: ListView(
          children: [
            (data == null) ? Text("product unavailable") : Image.file(data),
            MaterialButton(
              onPressed: () async {
                dynamic x = ImagePicker();
                dynamic y = await x.getImage(source: ImageSource.camera);
                (data == null) ? Text("product unavailable") : Image.file(data);
                setState(() {
                  if (y != null) {
                    data = File(y.path);
                  }
                });
              },
              child: Container(
                width: 350,
                height: 50,
                color: Colors.blue[200],
                child: Center(
                  child: Text(
                    "Scan QR CODE",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            MaterialButton(
              onPressed: () async {
                dynamic x = ImagePicker();
                dynamic y = await x.getImage(source: ImageSource.gallery);
                setState(() {
                  if (y != null) {
                    data = File(y.path);
                  }
                });
              },
              child: Container(
                width: 350,
                height: 50,
                color: Colors.blue[200],
                child: Center(
                  child: Text(
                    "find in Gallary",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
